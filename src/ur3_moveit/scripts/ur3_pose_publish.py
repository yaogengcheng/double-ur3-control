#!/usr/bin/env python
import sys
import rospy
import copy, math
import threading

from math import pi
from std_msgs.msg import String
from geometry_msgs.msg import Pose, Point, Quaternion

import moveit_commander
from moveit_commander import RobotCommander, MoveGroupCommander
from moveit_commander import PlanningSceneInterface, roscpp_initialize, roscpp_shutdown
from geometry_msgs.msg import PoseStamped
from moveit_msgs.msg import Grasp, GripperTranslation, PlaceLocation, MoveItErrorCodes
from trajectory_msgs.msg import JointTrajectory, JointTrajectoryPoint
from tf.transformations import euler_from_quaternion, quaternion_from_euler
import random



class MoveItIkDemo:

    def __init__(self):
        moveit_commander.roscpp_initialize(sys.argv)
        rospy.init_node('moveit_ik_demo')
        self.arm = moveit_commander.MoveGroupCommander('manipulator')
        self.pub = rospy.Publisher('ur3/data',Pose, queue_size=10)
    def publish_ur3_position(self):
        start_pose = self.arm.get_current_pose().pose
        print(start_pose)
        self.pub.publish(start_pose)
        rospy.sleep(1)

if __name__ == "__main__":
    move = MoveItIkDemo()
    while not rospy.is_shutdown():
        move.publish_ur3_position()
