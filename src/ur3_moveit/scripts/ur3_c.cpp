#include <ros/ros.h>
#include <moveit/move_group_interface/move_group_interface.h>
#include <moveit/robot_trajectory/robot_trajectory.h>
#include <moveit/trajectory_processing/iterative_time_parameterization.h>
#include <moveit_msgs/OrientationConstraint.h>
#include <stdio.h>  
#include <string.h>  
#include <iostream>  
#include <stdlib.h>  
#include <string>  
#include <unistd.h>  
#include <arpa/inet.h>  
#include <sys/socket.h>  
#define BUF_SIZE 100  
#define ADDR "192.168.1.125" //在本机测试用这个地址，如果连接其他电脑需要更换IP  
#define SERVERPORT 4530 

using namespace std;  
int main(int argc, char **argv)
{
    int sock;  
    char opmsg[BUF_SIZE];  
    char get_msg[BUF_SIZE] = {0};  
    int result, opnd_cnt, i;  
    int len;  
    bool if_first = true;  
    struct sockaddr_in serv_addr;  
    int send_len = 0;
	  int recv_len = 0;
	  //定义发送缓冲区和接受缓冲区
	  char send_buf[100];
	  char recv_buf[100];
  
    sock = socket(PF_INET, SOCK_STREAM, 0);  
    if(sock == -1){  
        return -1;  
    }  
    memset(&serv_addr, 0, sizeof(serv_addr));  
    serv_addr.sin_family = AF_INET;  
    serv_addr.sin_addr.s_addr = inet_addr(ADDR);  // 注释1  
    serv_addr.sin_port = htons(SERVERPORT);  
    if(connect(sock, (struct sockaddr*) &serv_addr, sizeof(serv_addr))==-1){ // 注释2  
        cout << "connect error\n";  
        return -1;  
    }  
    else{  
        cout << "connected ...\n" << endl;  //注释3  
    }  
  
    while(1){  
        recv_len = recv(sock, recv_buf, 100, 0);
		if (recv_len < 0) {
			cout << "接受失败！" << endl;
			break;
		}
		else {
			string str(recv_buf);
            if(str == "Click"){
			cout << "服务端信息:" << recv_buf << endl;
            break;
      }
		} 
    }  
    close(sock);  

        ros::init(argc, argv, "moveit_continue_trajectory_demo");
        ros::NodeHandle node_handle;
        ros::AsyncSpinner spinner(1);
        spinner.start();

        moveit::planning_interface::MoveGroupInterface ur3("manipulator");

        double accScale = 0.8;
        double velScale = 0.8;
        ur3.setMaxAccelerationScalingFactor(accScale);
        ur3.setMaxVelocityScalingFactor(velScale);
        ur3.setGoalPositionTolerance(0.001);
        ur3.setGoalOrientationTolerance(0.01);

        std::string end_effector_link = ur3.getEndEffectorLink();

        //设置目标位置所使用的参考坐标系
        std::string reference_frame = "base_link";
        ur3.setPoseReferenceFrame(reference_frame);

        //当运动规划失败后，允许重新规划
        ur3.allowReplanning(true);

        geometry_msgs::Pose target_pose;
        target_pose.position.x = 0.186967881579;
        target_pose.position.y = 0.365566210172;
        target_pose.position.z = 0.142543351401;
        target_pose.orientation.x = 0.763326564386;
        target_pose.orientation.y =  -0.21576549594;
        target_pose.orientation.z = 0.282137278332;
        target_pose.orientation.w = 0.539626192731;
        
        ur3.setPoseTarget(target_pose);

        moveit::planning_interface::MoveGroupInterface::Plan plan1;
        moveit::planning_interface::MoveItErrorCode success1 = ur3.plan(plan1);
        
        robot_state::RobotState start_state(*ur3.getCurrentState());
        const robot_state::JointModelGroup *joint_model_group=start_state.getJointModelGroup(ur3.getName());//要看具体的实现细节,这里没看懂
        start_state.setFromIK(joint_model_group, target_pose);
        ur3.setStartState(start_state);

        target_pose.position.x = 0.2054;
        target_pose.position.y = 0.4607;
        target_pose.position.z = 0.1237;
        target_pose.orientation.x = 0.7530;
        target_pose.orientation.y = -0.2145;
        target_pose.orientation.z = 0.2924;
        target_pose.orientation.w = 0.5489;

        ur3.setPoseTarget(target_pose);

        moveit::planning_interface::MoveGroupInterface::Plan plan2;
        moveit::planning_interface::MoveItErrorCode success2 = ur3.plan(plan2);

        // robot_state::RobotState start_state(*ur3.getCurrentState());
        joint_model_group=start_state.getJointModelGroup(ur3.getName());//要看具体的实现细节,这里没看懂
        start_state.setFromIK(joint_model_group, target_pose);
        ur3.setStartState(start_state);

        target_pose.position.x = 0.2042;
        target_pose.position.y = 0.3575;
        target_pose.position.z = 0.1224;
        target_pose.orientation.x = 0.7533;
        target_pose.orientation.y = -0.2140;
        target_pose.orientation.z = 0.2928;
        target_pose.orientation.w = 0.5485;
        ur3.setPoseTarget(target_pose);

        moveit::planning_interface::MoveGroupInterface::Plan plan3;
        moveit::planning_interface::MoveItErrorCode success3 = ur3.plan(plan3);

        joint_model_group=start_state.getJointModelGroup(ur3.getName());//要看具体的实现细节,这里没看懂
        start_state.setFromIK(joint_model_group, target_pose);
        ur3.setStartState(start_state);

        target_pose.position.x = 0.2197;
        target_pose.position.y = 0.4689;
        target_pose.position.z = 0.1059;
        target_pose.orientation.x = 0.7572;
        target_pose.orientation.y = -0.2162;
        target_pose.orientation.z = 0.2809;
        target_pose.orientation.w = 0.5485;
        ur3.setPoseTarget(target_pose);

        moveit::planning_interface::MoveGroupInterface::Plan plan4;
        moveit::planning_interface::MoveItErrorCode success4 = ur3.plan(plan4);

        joint_model_group=start_state.getJointModelGroup(ur3.getName());//要看具体的实现细节,这里没看懂
        start_state.setFromIK(joint_model_group, target_pose);
        ur3.setStartState(start_state);

        target_pose.position.x = 0.2180;
        target_pose.position.y = 0.3586;
        target_pose.position.z = 0.1036;
        target_pose.orientation.x = 0.7499;
        target_pose.orientation.y = -0.2173;
        target_pose.orientation.z = 0.2831;
        target_pose.orientation.w = 0.5570;
        ur3.setPoseTarget(target_pose);

        moveit::planning_interface::MoveGroupInterface::Plan plan5;
        moveit::planning_interface::MoveItErrorCode success5 = ur3.plan(plan5);



        //连接两条轨迹
        moveit_msgs::RobotTrajectory trajectory;
        trajectory.joint_trajectory.joint_names = plan1.trajectory_.joint_trajectory.joint_names;
        trajectory.joint_trajectory.points = plan1.trajectory_.joint_trajectory.points;
        for(unsigned i = 0; i < plan2.trajectory_.joint_trajectory.points.size(); i++)
        {
            trajectory.joint_trajectory.points.push_back(plan2.trajectory_.joint_trajectory.points[i]);
        }
        for(unsigned i = 0; i < plan3.trajectory_.joint_trajectory.points.size(); i++)
        {
            trajectory.joint_trajectory.points.push_back(plan3.trajectory_.joint_trajectory.points[i]);
        }
        for(unsigned i = 0; i < plan4.trajectory_.joint_trajectory.points.size(); i++)
        {
            trajectory.joint_trajectory.points.push_back(plan4.trajectory_.joint_trajectory.points[i]);
        }
        for(unsigned i = 0; i < plan5.trajectory_.joint_trajectory.points.size(); i++)
        {
            trajectory.joint_trajectory.points.push_back(plan5.trajectory_.joint_trajectory.points[i]);
        }
      

        //采用时间最优算法对轨迹重规划
        moveit::planning_interface::MoveGroupInterface::Plan joinedPlan;
        robot_trajectory::RobotTrajectory rt(ur3.getCurrentState()->getRobotModel(), "manipulator");
        rt.setRobotTrajectoryMsg(*ur3.getCurrentState(), trajectory);
        trajectory_processing::IterativeParabolicTimeParameterization iptp;
        iptp.computeTimeStamps(rt, velScale, accScale);

        rt.getRobotTrajectoryMsg(joinedPlan.trajectory_);

        if (!ur3.execute(joinedPlan))
        {
            ROS_ERROR("Failed to execute plan");
            return false;
        }

        target_pose.position.x = 0.12997228007015504;
        target_pose.position.y = 0.2854041883964249;
        target_pose.position.z = 0.06703591178178336;
        target_pose.orientation.x = 0.7736768055563139;
        target_pose.orientation.y = -0.17392949227231194;
        target_pose.orientation.z = 0.3246008391416839;
        target_pose.orientation.w = 0.5155647655635396;
        ur3.setPoseTarget(target_pose);
        ur3.move();
        sleep(3);

      
    }

    
    
// #include <ros/ros.h>
// #include <ros/console.h>
// #include <nav_msgs/Path.h>
// #include <std_msgs/String.h>
// #include <geometry_msgs/Quaternion.h>
// #include <geometry_msgs/PoseStamped.h>
// #include <tf/transform_broadcaster.h>
// #include <tf/tf.h>

// main (int argc, char **argv)
// {
//     ros::init (argc, argv, "showpath");

//     ros::NodeHandle ph;
//     ros::Publisher path_pub = ph.advertise<nav_msgs::Path>("trajectory",1, true);

//     ros::Time current_time, last_time;
//     current_time = ros::Time::now();
//     last_time = ros::Time::now();

//     nav_msgs::Path path;
//     //nav_msgs::Path path;
//     path.header.stamp=current_time;
//     path.header.frame_id="odom";


//     double x = 0.0;
//     double y = 0.0;
//     double th = 0.0;
//     double vx = 0.1;
//     double vy = -0.1;
//     double vth = 0.1;

//     ros::Rate loop_rate(1);
//     while (ros::ok())
//     {

//         current_time = ros::Time::now();
//         //compute odometry in a typical way given the velocities of the robot
//         double dt = 0.1;
//         double delta_x = (vx * cos(th) - vy * sin(th)) * dt;
//         double delta_y = (vx * sin(th) + vy * cos(th)) * dt;
//         double delta_th = vth * dt;

//         x += delta_x;
//         y += delta_y;
//         th += delta_th;


//         geometry_msgs::PoseStamped this_pose_stamped;
//         this_pose_stamped.pose.position.x = x;
//         this_pose_stamped.pose.position.y = y;

//         geometry_msgs::Quaternion goal_quat = tf::createQuaternionMsgFromYaw(th);
//         this_pose_stamped.pose.orientation.x = goal_quat.x;
//         this_pose_stamped.pose.orientation.y = goal_quat.y;
//         this_pose_stamped.pose.orientation.z = goal_quat.z;
//         this_pose_stamped.pose.orientation.w = goal_quat.w;

//         this_pose_stamped.header.stamp=current_time;
//         this_pose_stamped.header.frame_id="odom";
//         path.poses.push_back(this_pose_stamped);

//         path_pub.publish(path);
//         ros::spinOnce();               // check for incoming messages

//         last_time = current_time;
//         loop_rate.sleep();
//     }

//     return 0;
// }