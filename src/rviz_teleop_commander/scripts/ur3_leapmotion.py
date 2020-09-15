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
        print("====== move plan go to home 1 ======")
        self.robot_arm.set_named_target("up")  # go to goal state.
        self.robot_arm.go()
        rospy.sleep(2)
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
        self.executing = True
        waypoints = []
        waypoints.append(self.robot_arm.get_current_pose())
        # set the pose for x, y and z
        wpose = Pose()
        wpose.position.x = self.Pose_goal.x
        wpose.position.y = self.Pose_goal.z  # we switch z and y because the leap motion is faced upwards
        wpose.position.z = self.Pose_goal.y
        waypoints.append(copy.deepcopy(wpose))
        # plan the movement
        (plan, fraction) = self.robot_arm.compute_cartesian_path(
            waypoints,  # waypoints to follow
            0.01,  # eef_step
            0.0)  # jump_threshold
        # execute the plan
        self.robot_arm.execute(plan)
        # we are no longer executing
        self.executing = False
        self.robot_arm.set_pose_target(self.Pose_goal)  # go to goal state.
        self.robot_arm.go(True)
        # print("====== move plan go to Pose_goal ======")
        # rospy.sleep(0.5)
        #
        # robot_state = self.robot_arm.get_current_pose();
        # robot_angle = self.robot_arm.get_current_joint_values();
        #
        # print(robot_state)

    def callback(self, data):
        if not self.executing:
            self.index_tip_variation.x = data.x - self.indextip.x
            self.index_tip_variation.y = data.y - self.indextip.y
            self.index_tip_variation.z = data.z - self.indextip.z
            self.indextip = data

            self.Pose_goal.position.x = self.Pose_goal.position.x + self.index_tip_variation.x
            self.Pose_goal.position.y = self.Pose_goal.position.y + self.index_tip_variation.y
            self.Pose_goal.position.z = self.Pose_goal.position.z + self.index_tip_variation.z

            self.move_code()

            rospy.loginfo(rospy.get_name() + ": Leap ROS Data %s" % self.index_tip_variation)

    def listener(self):
        # rospy.Subscriber("leapmotion/raw", leap, callback)
        rospy.Subscriber("leapmotion/data", Point, self.callback)

        rospy.spin()


if __name__ == '__main__':

    tm = TestMove()
    tm.__init__()
    #tm.listener()

    roscpp_shutdown()
