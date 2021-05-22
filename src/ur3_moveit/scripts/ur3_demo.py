#!/usr/bin/env python
import sys
import rospy
import copy, math
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

GROUP_NAME_ARM = "manipulator"
FIXED_FRAME = 'world'


# GROUP_NAME_GRIPPER = "NAME OF GRIPPER"

class TestMove():

    def __init__(self):
        roscpp_initialize(sys.argv)
        rospy.init_node('ur3_move', anonymous=True)

        self.scene = PlanningSceneInterface()
        self.robot_cmd = RobotCommander()

        self.Pose_goal = Pose()

        self.robot_arm = MoveGroupCommander(GROUP_NAME_ARM)
        # robot_gripper = MoveGroupComm # self.robot_arm.set_named_target("up")  #go to goal state.
        # self.robot_arm.go()
        # print("====== move plan go to home 1 ======")
        # rospy.sleep(2)
        # print("====== move plan go to home 1 ======")
        # rospy.sleep(2)
        #        print("====== move plan go to up ======")
        #        self.robot_arm.set_named_target("zeros")  #go to goal state.
        #        self.robot_arm.go(wait=True)
        #        print("====== move plan go to zeros ======")
        #        rospy.sleep(1)

        #        robot_arm.set_named_target("up")
        #        robot_arm.go(wait=True)
        Pose_goal.header.frame_id = 'rightbase_link'
        Pose_goal.pose.position.x = -0.1955793462195291   # red line      0.2   0.2
        Pose_goal.pose.position.y = 0.3456909607161672  # green line  0.15   0.15
        Pose_goal.pose.position.z = 0.16049011785234568  # blue line   # 0.35   0.6
        # Pose_goal.pose.orientation = start_pose.orientation
        Pose_goal.pose.orientation.x = 0.28520761755123414
        Pose_goal.pose.orientation.y = 0.24468120052517786
        Pose_goal.pose.orientation.z = 0.6034841927127607
        Pose_goal.pose.orientation.w = 0.7032741671255489
        self.robot_arm.set_pose_target(self.Pose_goal)  # go to goal state.
        self.robot_arm.go(True)
        print("====== move plan go to Pose_goal ======")
        #rospy.sleep(2)

        robot_state = self.robot_arm.get_current_pose()
        robot_angle = self.robot_arm.get_current_joint_values()

        print(robot_state)

    def callback(self, data):
        rospy.loginfo(rospy.get_caller_id() + "I heard %s", data)
        self.Pose_goal = data
        self.move_code()

    def listener(self):
        rospy.Subscriber("chatter", Pose, self.callback)


if __name__ == '__main__':
    tm = TestMove()
    # tm.listener()
    tm.move_code()

    rospy.spin()
    roscpp_shutdown()
