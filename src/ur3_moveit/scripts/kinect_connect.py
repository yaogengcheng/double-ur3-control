#!/usr/bin/env python
import sys
import rospy
import copy, math
import threading
import tf
from math import pi
from std_msgs.msg import String
from geometry_msgs.msg import Pose, Point, Quaternion

from moveit_commander import RobotCommander, MoveGroupCommander
from moveit_commander import PlanningSceneInterface, roscpp_initialize, roscpp_shutdown
from geometry_msgs.msg import PoseStamped, Pose
from moveit_msgs.msg import Grasp, GripperTranslation, PlaceLocation, MoveItErrorCodes
from trajectory_msgs.msg import JointTrajectory, JointTrajectoryPoint
from tf.transformations import euler_from_quaternion, quaternion_from_euler
import random

GROUP_NAME_ARM = "left_manipulator"
FIXED_FRAME = 'world'


# GROUP_NAME_GRIPPER = "NAME OF GRIPPER"

class TestMove():

    def __init__(self):
        roscpp_initialize(sys.argv)
        rospy.init_node('kinect_ur3_move', anonymous=True)
        self.listener = tf.TransformListener()

        self.scene = PlanningSceneInterface()
        self.robot_cmd = RobotCommander()
        self.initialPose = PoseStamped()
        self.Pose_goal = PoseStamped()
        self.start_goal = PoseStamped()
        self.current_goal = PoseStamped()
        self.next_pose_goal = PoseStamped()
        self.waypoints = []
        self.robot_arm = MoveGroupCommander(GROUP_NAME_ARM)

        print("====== move plan go to initial pose ======")
        self.initialPose.header.frame_id = 'leftee_link'
        self.initialPose.pose.position.x = 0.103190426853   # red line      0.2   0.2
        self.initialPose.pose.position.y = -0.827689781681  # green line  0.15   0.15
        self.initialPose.pose.position.z = 0.978219026059  # blue line   # 0.35   0.6
        # Pose_goal.pose.orientation = start_pose.orientation
        self.initialPose.pose.orientation.x =-0.556104592788
        self.initialPose.pose.orientation.y = 0.448401851544
        self.initialPose.pose.orientation.z = -0.495185387101
        self.initialPose.pose.orientation.w =  0.494444024955
       
        self.start_goal = self.robot_arm.get_current_pose("leftee_link")
        self.Pose_goal = PoseStamped()
        t = rospy.Time(0)    
        self.listener.waitForTransform('/leftbase_link','/world',t,rospy.Duration(5))

        if self.listener.canTransform('/leftbase_link','/world',t):
            self.Pose_goal = self.listener.transformPose('/leftbase_link',self.start_goal)
            print(self.Pose_goal)
        else:
            rospy.logerr('Transformation is not possible!')
            sys.exit(0)
        print("Start pose:%s",self.Pose_goal)

        self.listener.waitForTransform('/leftbase_link','/kinect2_rgb_optical_frame',t,rospy.Duration(2))
    
        self.waypoints.append(self.Pose_goal.pose)

        
        # initialJointValues = [4.111435176058169,
        #                       2.715653621728593,
        #                       0.7256647920137681,
        #                       5.983459446005512,
        #                       -5.682231515319553,
        #                       -6.283185179581844]
        # self.robot_arm.set_joint_value_target(initialJointValues)
        # plan = self.robot_arm.plan()
        # self.robot_arm.execute(plan)
        # rospy.sleep(3)  # wait for robot to move to initial position
        #
        # # save these positions on run
        # self.robot_initialPos = Pose().position
        # self.robot_initialPos.x = self.robot_arm.get_current_pose().pose.position.x
        # self.robot_initialPos.y = self.robot_arm.get_current_pose().pose.position.z
        # self.robot_initialPos.z = self.robot_arm.get_current_pose().pose.position.y
        #
        # self.maxLeft = self.robot_initialPos.x - 0.200  # x left
        # self.maxRight = self.robot_initialPos.x + 0.200  # x right
        # self.maxHeight = self.robot_initialPos.y + 0.300  # y height
        # self.maxUp = self.robot_initialPos.z + 0.100  # z up
        # self.maxDown = self.robot_initialPos.z - 0.100  # z down
        #
        # self.robot_arm.set_goal_orientation_tolerance(0.005)
        # self.robot_arm.set_planning_time(5)
        # self.robot_arm.set_num_planning_attempts(5)
        #
        # # rospy.sleep(2)
        # # Allow replanning to increase the odds of a solution
        # self.robot_arm.allow_replanning(True)
        #
        # self.index_tip_variation = Point()
        # self.indextip = Point()
        # self.executing = False

    def move_code(self):

        self.chuizhi = PoseStamped()
        self.chuizhi.header.frame_id = 'world'
        self.chuizhi.pose.position = self.Pose_goal.pose.position
        self.chuizhi.pose.orientation.x = 0
        self.chuizhi.pose.orientation.y =  0.707107
        self.chuizhi.pose.orientation.z = 0
        self.chuizhi.pose.orientation.w = 0.707107
        print("next_pose_goal",self.next_pose_goal)
        t = rospy.Time(0)    
        self.listener.waitForTransform('/leftbase_link','/world',t,rospy.Duration(5))

        if self.listener.canTransform('/leftbase_link','/world',t):
            self.chuizhi_transf = self.listener.transformPose('/leftbase_link',self.chuizhi)
        else:
            rospy.logerr('Transformation is not possible!')
        self.chuizhi_transf.pose.position = self.Pose_goal.pose.position
        self.robot_arm.set_pose_target(self.chuizhi_transf,"leftee_link")
        traj = self.robot_arm.plan()
        self.robot_arm.execute(traj,wait=True)
       

        # self.mpose_transf = PoseStamped()
        # t = rospy.Time(0)    
        
        # if self.listener.canTransform('/leftbase_link','/kinect2_rgb_optical_frame',t):
        #     self.mpose_transf = self.listener.transformPose('/leftbase_link',self.next_pose_goal)
        #     print("mpose_transf:%s", self.mpose_transf)
        # else:
        #     rospy.logerr('Transformation is not possible!')
        #     sys.exit(0)
        # self.mpose_transf.pose.orientation = self.Pose_goal.pose.orientation
        # self.mpose_transf.pose.position = self.Pose_goal.pose.position
        # self.current_goal = self.robot_arm.get_current_pose("leftee_link")
        # self.Pose2 = PoseStamped()
        # t = rospy.Time(0)    
        # self.listener.waitForTransform('/leftbase_link','/world',t,rospy.Duration(2))

        # if self.listener.canTransform('/leftbase_link','/world',t):
        #     self.Pose2 = self.listener.transformPose('/leftbase_link',self.current_goal)
        # else:
        #     rospy.logerr('Transformation is not possible!')
        #     sys.exit(0)

        # self.robot_arm.set_pose_target(self.mpose_transf,"leftee_link")
        # traj = self.robot_arm.plan()
        # self.robot_arm.execute(traj,wait=True)
        # rospy.sleep(3)

        # self.plan_cartesian_path(self.mpose_transf.pose)

    def plan_cartesian_path(self, target_pos):
        self.waypoints.append(copy.deepcopy(target_pos))
        (plan, fraction) = self.robot_arm.compute_cartesian_path(
										self.waypoints,   # waypoints to follow
										0.01,      # eef_step  
										0.0)         # jump_threshold  
        self.waypoints.pop(0)
        self.robot_arm.execute(plan, wait=True)

    def moveInSev(self,pose1,pose2):
        distance2 = math.pow(pose1.pose.position.x-pose2.pose.position.x,2)+math.pow(pose1.pose.position.y-pose2.pose.position.y,2)+math.pow(pose1.pose.position.z-pose2.pose.position.z,2)
        print("dis2",distance2)
        if  distance2 > 0.01:
            print("---")
            pose1.pose.position.x = (pose1.pose.position.x-pose2.pose.position.x)/2+pose2.pose.position.x
            pose1.pose.position.y = (pose1.pose.position.y-pose2.pose.position.y)/2+pose2.pose.position.y
            pose1.pose.position.z = (pose1.pose.position.z-pose2.pose.position.z)/2+pose2.pose.position.z
            self.moveInSev(pose1,pose2)
        else:
            print("===")
            self.Pose2 = pose1
            self.robot_arm.set_pose_target(pose1,"leftee_link")
            # self.robot_arm.go()
            # rospy.sleep(5)
            traj = self.robot_arm.plan()
        
            self.robot_arm.execute(traj)
            rospy.sleep(3)
            

    def back_initailPose(self):
        self.robot_arm.set_pose_target(self.Pose_goal,"leftee_link")
        self.robot_arm.go()
        rospy.sleep(5)

    def callback_left(self, data):
        print("left===========")
        self.next_pose_goal = data  
        rospy.loginfo(rospy.get_name() + ": kinect data %s" % data)
        self.move_code()

    def callback_right(self, data):
        print("right===========")
        rospy.loginfo("I heard: [%s]" % data)
        self.back_initailPose()
       
    def kinectlistener(self):
        # rospy.Subscriber("leapmotion/raw", leap, callback)
        rospy.Subscriber("/kinect2/click_point/left", PoseStamped, self.callback_left)
        rospy.Subscriber("/kinect2/click_point/right", PoseStamped, self.callback_right)
        rospy.spin()

if __name__ == '__main__':

    tm = TestMove()
    # tm.kinectlistener()
    tm.move_code()
    roscpp_shutdown()
