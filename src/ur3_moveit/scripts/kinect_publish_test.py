#!/usr/bin/env python
import sys
import rospy
import copy, math
import threading

from math import pi
from std_msgs.msg import String
from geometry_msgs.msg import Pose, Point, Quaternion

from moveit_commander import RobotCommander, MoveGroupCommander
from moveit_commander import PlanningSceneInterface, roscpp_initialize, roscpp_shutdown
from geometry_msgs.msg import PoseStamped
from moveit_msgs.msg import Grasp, GripperTranslation, PlaceLocation, MoveItErrorCodes
from trajectory_msgs.msg import JointTrajectory, JointTrajectoryPoint
from tf.transformations import euler_from_quaternion, quaternion_from_euler
import random


def talker():
    pub = rospy.Publisher('kinect/data',PoseStamped, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(5)

    Pose_goal = PoseStamped()
    Pose_goal.header.frame_id = 'base_link'
    Pose_goal.pose.position.x = 0.103190426853   # red line      0.2   0.2
    Pose_goal.pose.position.y = -0.827689781681  # green line  0.15   0.15
    Pose_goal.pose.position.z = 0.928219026059  # blue line   # 0.35   0.6
  # Pose_goal.pose.orientation = start_pose.orientation
    Pose_goal.pose.orientation.x =-0.556104592788
    Pose_goal.pose.orientation.y = 0.448401851544
    Pose_goal.pose.orientation.z = -0.495185387101
    Pose_goal.pose.orientation.w =  0.494444024955

    # while not rospy.is_shutdown():
#       hello_str = "hello world %s" % rospy.get_time()

    rospy.loginfo(Pose_goal)
    pub.publish(Pose_goal)
    rospy.sleep(5)


    Pose_goal.header.frame_id = 'base_link'
    Pose_goal.pose.position.x = 0.103190426853   # red line      0.2   0.2
    Pose_goal.pose.position.y = -0.827689781681  # green line  0.15   0.15
    Pose_goal.pose.position.z = 0.978219026059  # blue line   # 0.35   0.6
  # Pose_goal.pose.orientation = start_pose.orientation
    Pose_goal.pose.orientation.x =-0.556104592788
    Pose_goal.pose.orientation.y = 0.448401851544
    Pose_goal.pose.orientation.z = -0.495185387101
    Pose_goal.pose.orientation.w =  0.494444024955

    rospy.loginfo(Pose_goal)
    pub.publish(Pose_goal)
    rospy.sleep(5)


if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
