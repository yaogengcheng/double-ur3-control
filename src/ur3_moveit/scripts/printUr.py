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
import socket

GROUP_NAME_ARM = "manipulator"
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
        self.robot_arm.allow_replanning(True)
        self.robot_arm.set_goal_position_tolerance(0.01)
        self.robot_arm.set_goal_orientation_tolerance(0.1)


        
    def printPose(self):
        self.start_goal = self.robot_arm.get_current_pose("ee_link")
        
        print("Start pose:%s",self.start_goal)

    
   
 

if __name__ == '__main__':
    Test = TestMove()

    while True:
        Test.printPose()

  


     

