#include "ros/ros.h"
#include "geometry_msgs/WrenchStamped.h"
#include "geometry_msgs/TwistStamped.h"
#include <tf/transform_datatypes.h>
#include <tf_conversions/tf_eigen.h>
#include <tf/transform_listener.h>
#include <moveit/move_group_interface/move_group_interface.h>
#include <moveit/robot_trajectory/robot_trajectory.h>
#include <moveit/trajectory_processing/iterative_time_parameterization.h>
#include <moveit_msgs/OrientationConstraint.h>
#include <stdio.h>  
#include <string.h>  
#include <iostream>  
#include <stdlib.h>  
#include <string>
#include <ur3_moveit/calibration_msg.h>


#include "Eigen/Core"
#include "Eigen/Geometry"
#include "Eigen/Dense"

#include "std_msgs/Float32.h"


class GetSensorData
{
private:
    /* data */
    ros::NodeHandle nh_;
    std::string topic_wrench;
    std::string topic_calibration;
    ros::Publisher pub_sensor_cali_info_;
    ros::Subscriber sub_wrench_;
    ros::Rate loop_rate_;
    Eigen::Matrix<double, 111, 6>  F;
    Eigen::Matrix<double, 111, 1> T;
    Eigen::Matrix<double, 3, 6> wrench_force;
    Eigen::Matrix<double, 1, 3> wrench_torque;
    Eigen::Matrix<double, 6, 1> cali_info;
    Eigen::Matrix<double, 111, 6> R;
    Eigen::Matrix<double, 111, 1> N;
    Eigen::Matrix<double, 1, 3> f;
    Eigen::Matrix<double, 6, 1> cali_bias;
    Eigen::Matrix<double, 3, 3> rotation_matrix;
    tf::TransformListener listener;
    
    moveit::planning_interface::MoveGroupInterface *arm_group;// = new moveit::planning_interface::MoveGroupInterface("manipulator");


public:
    //GetSensorData(/* args */);

    GetSensorData(ros::NodeHandle &n,double frequency
                            );
    // ~GetSensorData();
    void wrench_callback(const geometry_msgs::WrenchStampedConstPtr msg);
    void run();
    void initMoveGroup();
    void moveNextPose();
    void compute_cali_info();
    void publish_cali_info();
    bool get_trans_matrix();

};


 
GetSensorData::GetSensorData(ros::NodeHandle &n,double frequency
                            ): nh_(n), loop_rate_(frequency)
{
    // nh_ = n;
    // loop_rate_ = frequency;
    // Subscribers
    sub_wrench_ = nh_.subscribe("/ft_sensor/netft_data", 5,
                                &GetSensorData::wrench_callback, this, ros::TransportHints().reliable().tcpNoDelay());
 
    // Publishers
    pub_sensor_cali_info_ = nh_.advertise<ur3_moveit::calibration_msg>("topic_calibration", 5);
 
    /// initializing the class variables
    F.setZero();
    T.setZero();
    wrench_force.setZero();
    wrench_torque.setZero();
    cali_info.setZero();
 
    R.setZero();
    N.setZero();
    f.setZero();
    cali_bias.setZero();
    rotation_matrix.setZero();
 
    /// 没有这个自旋线程,ROS消息就像卡住一样,打印不出来,必须ctrl+c才能显示
    ros::AsyncSpinner *spinner;
    spinner = new ros::AsyncSpinner(1);
    spinner->start();
 
}
 
void GetSensorData::wrench_callback(const geometry_msgs::WrenchStampedConstPtr msg) {
    // Reading the FT-sensor in its own frame
    wrench_force <<
            0,msg->wrench.force.z, -(msg->wrench.force.y),1,0,0,
            -(msg->wrench.force.z),0,msg->wrench.force.x,0,1,0,
            msg->wrench.force.y,-(msg->wrench.force.x),0,0,0,1;
 
    wrench_torque << msg->wrench.torque.x,msg->wrench.torque.y, msg->wrench.torque.z;
 
    f <<  msg->wrench.force.x,msg->wrench.force.y,msg->wrench.force.z;
 
}
 
void GetSensorData::run() {
 
    initMoveGroup();
 
    moveNextPose();
 
    compute_cali_info();
 
    while (nh_.ok()) {
        publish_cali_info();
        ros::spinOnce();
        loop_rate_.sleep();
    }
 
}
 
void GetSensorData::initMoveGroup()
{
    arm_group = new moveit::planning_interface::MoveGroupInterface("manipulator");
    arm_group->setPlannerId("RRTConnectkConfigDefault");
}
 
void GetSensorData::moveNextPose()
{
    // execute random poses

    double targetPose[6] = {1.0472, -1.5708, 1.5708, -1.5708, -1.5708, 0};
    std::vector<double> joint_group_positions(6);
    joint_group_positions[0] = targetPose[0];
    joint_group_positions[1] = targetPose[1];
    joint_group_positions[2] = targetPose[2];
    joint_group_positions[3] = targetPose[3];
    joint_group_positions[4] = targetPose[4];
    joint_group_positions[5] = targetPose[5];
    arm_group->setJointValueTarget(joint_group_positions);
    // arm_group->setRandomTarget();
    arm_group->move();
    ros::Duration(2).sleep();

    get_trans_matrix();
    // <3,6>表示3行6列,(0,0)表示起始位置
    F.block<3,6>(0,0) = wrench_force;
    R.block<3,3>(0,0) = rotation_matrix.transpose();
    R.block<3,3>(0,3) << 1,0,0,0,1,0,0,0,1;
    T.block<3,1>(0,0) = wrench_torque;
    N.block<3,1>(0,0) = f;
 
    for(int i = 1;i<=18;i++){
        // 设置当前状态为初始状态
        arm_group->setStartStateToCurrentState();
        joint_group_positions[3] -= 0.174;
        arm_group->setJointValueTarget(joint_group_positions);
        // arm_group->setRandomTarget();
        arm_group->move();
        ros::Duration(2).sleep();

        get_trans_matrix();
        F.block<3,6>(3*i,0) = wrench_force;
        R.block<3,3>(3*i,0) = rotation_matrix.transpose();
        R.block<3,3>(3*i,3) << 1,0,0,0,1,0,0,0,1;
        T.block<3,1>(3*i,0) = wrench_torque;
        N.block<3,1>(3*i,0) = f;
    }

    arm_group->setStartStateToCurrentState();
    joint_group_positions[3] = -1.5708;
    joint_group_positions[4] = -1.5708;
    arm_group->setJointValueTarget(joint_group_positions);
    arm_group->move();
    ros::Duration(2).sleep();

    for(int i = 1;i<=18;i++){
        arm_group->setStartStateToCurrentState();
        joint_group_positions[4] -= 0.174;
        arm_group->setJointValueTarget(joint_group_positions);
        // arm_group->setRandomTarget();
        arm_group->move();
        ros::Duration(2).sleep();

        get_trans_matrix();
        F.block<3,6>(54+3*i,0) = wrench_force;
        R.block<3,3>(54+3*i,0) = rotation_matrix.transpose();
        R.block<3,3>(54+3*i,3) << 1,0,0,0,1,0,0,0,1;
        T.block<3,1>(54+3*i,0) = wrench_torque;
        N.block<3,1>(54+3*i,0) = f;

    }

    arm_group->setStartStateToCurrentState();
    joint_group_positions[3] = -1.5708;
    joint_group_positions[4] = -1.5708;
    arm_group->setJointValueTarget(joint_group_positions);
    arm_group->move();
    ros::Duration(2).sleep();


    // std::cout<< " F ：" << F << std::endl;
    std::cout<< " R ：" << R << std::endl;
    // std::cout<< " T ：" << T << std::endl;
    std::cout<< " N ：" << N << std::endl;
}
 
void GetSensorData::compute_cali_info()
{
    // 最小二乘法
    // cali_info = (F.transpose() * F).inverse() * (F.transpose()) * T;
    // std::cout<< "cali_info :"<< cali_info << std::endl;
 
    cali_bias = (R.transpose() * R).inverse() * (R.transpose()) * N;
    std::cout<< "cali_bias :"<< cali_bias << std::endl;
}
 
void GetSensorData::publish_cali_info()
{
    // Admittance Dynamics computation
    ur3_moveit::calibration_msg calibration_msg;
    calibration_msg.header.stamp = ros::Time::now();
    calibration_msg.header.frame_id = "FT_sensor_link";
 
    calibration_msg.centroid.x = cali_info[0];
    calibration_msg.centroid.y = cali_info[1];
    calibration_msg.centroid.z = cali_info[2];
 
    calibration_msg.force_bias.x  = cali_bias[3];
    calibration_msg.force_bias.y  = cali_bias[4];
    calibration_msg.force_bias.z  = cali_bias[5];
 
    calibration_msg.torque_bias.x  = cali_info[3]-cali_bias[4]*cali_info[2]+cali_bias[5]*cali_info[1];
    calibration_msg.torque_bias.y  = cali_info[4]-cali_bias[5]*cali_info[0]+cali_bias[3]*cali_info[2];
    calibration_msg.torque_bias.z  = cali_info[5]-cali_bias[3]*cali_info[1]+cali_bias[4]*cali_info[0];
    pub_sensor_cali_info_.publish(calibration_msg);
 
}
 
bool GetSensorData::get_trans_matrix()
{
    tf::StampedTransform transform;
    try {
        listener.lookupTransform("base_link", "sensor_link", ros::Time(0), transform);
        tf::matrixTFToEigen(transform.getBasis(), rotation_matrix);
    }
    catch (tf::TransformException ex) {
        rotation_matrix.setZero();
        ROS_WARN( "Waiting for TF from: ");
        return false;
    }
 
    return true;
}
 
 
int main(int argc, char **argv)
{
    ros::init(argc, argv, "get_sensor_data");
 
    ros::NodeHandle nh;
    double frequency = 100.0;
 
    // std::string topic_wrench;
    // std::string topic_calibration;
 
    /// LOADING PARAMETERS FROM THE ROS SERVER
    // if (!nh.getParam("topic_wrench", topic_wrench)) {
    //     ROS_ERROR("Couldn't retrieve the topic name for the force/torque sensor.");
    //     return -1;
    // }
 
    // if (!nh.getParam("topic_calibration", topic_calibration)) {
    //     ROS_ERROR("Couldn't retrieve the topic topic_calibration");
    //     return -1;
    // }
 
    GetSensorData get_sensor_data(nh,frequency);
 
    get_sensor_data.run();
 
    return 0;
}