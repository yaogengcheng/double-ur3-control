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
        # robot_gripper = MoveGroupCommander(GROUP_NAME_GRIPPER)
        self.robot_arm.set_goal_orientation_tolerance(0.005)
        self.robot_arm.set_planning_time(5)
        self.robot_arm.set_num_planning_attempts(5)

        rospy.sleep(2)
        # Allow replanning to increase the odds of a solution
        self.robot_arm.allow_replanning(True)

    def move_code(self):
        # self.robot_arm.set_named_target("up")  #go to goal state.
        # self.robot_arm.go()
        # print("====== move plan go to home 1 ======")
        # rospy.sleep(2)
        #        print("====== move plan go to up ======")
        #        self.robot_arm.set_named_target("zeros")  #go to goal state.
        #        self.robot_arm.go(wait=True)
        #        print("====== move plan go to zeros ======")
        #        rospy.sleep(1)

        #        robot_arm.set_named_target("up")
        #        robot_arm.go(wait=True)

        self.robot_arm.set_pose_target(self.Pose_goal)  # go to goal state.
        self.robot_arm.go(True)
        print("====== move plan go to Pose_goal ======")
        #rospy.sleep(2)

        robot_state = self.robot_arm.get_current_pose();
        robot_angle = self.robot_arm.get_current_joint_values();

        print(robot_state)

    def callback(self, data):
        rospy.loginfo(rospy.get_caller_id() + "I heard %s", data)
        self.Pose_goal = data
        self.move_code()

    def listener(self):
        rospy.Subscriber("chatter", Pose, self.callback)


if __name__ == '__main__':
    tm = TestMove()
    tm.__init__()
    tm.listener()

    rospy.spin()
    roscpp_shutdown()
