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
from geometry_msgs.msg import PoseStamped
from moveit_msgs.msg import Grasp, GripperTranslation, PlaceLocation, MoveItErrorCodes
from trajectory_msgs.msg import JointTrajectory, JointTrajectoryPoint
from tf.transformations import euler_from_quaternion, quaternion_from_euler
import random

GROUP_NAME_ARM = "right_manipulator"
FIXED_FRAME = 'world'


# GROUP_NAME_GRIPPER = "NAME OF GRIPPER"

class TestMove():

    def __init__(self):
        roscpp_initialize(sys.argv)
        rospy.init_node('draw_move', anonymous=True)
        listener = tf.TransformListener()

        self.scene = PlanningSceneInterface()
        self.robot_cmd = RobotCommander()
        self.Pose_goal = PoseStamped()
        self.target_goal = PoseStamped()
        self.next_pose_goal = PoseStamped()
        self.theta = 0
        self.waypoints = []
        self.robot_arm = MoveGroupCommander(GROUP_NAME_ARM)

        print("====== move plan go to initial pose ======")
        self.Pose_goal.header.frame_id = 'world'
        self.Pose_goal.pose.position.x = 0.150927439711   # red line      0.2   0.2
        self.Pose_goal.pose.position.y = -0.901780911637  # green line  0.15   0.15
        self.Pose_goal.pose.position.z = 0.998914536823  # blue line   # 0.35   0.6
        # Pose_goal.pose.orientation = start_pose.orientation
        self.Pose_goal.pose.orientation.x = 0.681875262636
        self.Pose_goal.pose.orientation.y = -0.728650631017
        self.Pose_goal.pose.orientation.z = 0.0513402005789
        self.Pose_goal.pose.orientation.w =  0.0384521511616
        self.robot_arm.set_pose_target(self.Pose_goal,'righttool0')
        self.robot_arm.go()
        rospy.sleep(5)

        self.target_goal.header.frame_id = 'world'
        self.target_goal.pose.position.x = 0.150927439711   # red line      0.2   0.2
        self.target_goal.pose.position.y = -0.901780911637  # green line  0.15   0.15
        self.target_goal.pose.position.z =  0.969077397768 # blue line   # 0.35   0.6
        # Pose_goal.pose.orientation = start_pose.orientation
        self.target_goal.pose.orientation.x = 0.681875262636
        self.target_goal.pose.orientation.y = -0.728650631017
        self.target_goal.pose.orientation.z = 0.0513402005789
        self.target_goal.pose.orientation.w =  0.0384521511616

        self.centerA = self.target_goal.pose.position.x
        self.centerB = self.target_goal.pose.position.y

        while self.theta < 2*pi:
            wpose = copy.deepcopy(self.target_goal.pose)
            wpose.position.x = self.centerA + 0.05*math.cos(self.theta)
            wpose.position.y = self.centerB + 0.05*math.sin(self.theta)
            self.waypoints.append(copy.deepcopy(wpose))
            self.theta+= 0.1

    def move_code(self):
        # plan the movement
        fraction = 0
        maxtries = 100
        attempts = 0
        self.robot_arm.set_start_state_to_current_state()
        while fraction<1.0 and attempts<maxtries:
            (plan,fraction)=self.robot_arm.compute_cartesian_path(
                self.waypoints,
                0.01,
                0,
                True
            )
            attempts+=1
            print("attempt:%s " %attempts)
        # execute the plan
        if fraction == 1.0:
            self.robot_arm.execute(plan)
        else:
            print("=========executing fail==========")

if __name__ == '__main__':

    tm = TestMove()
    tm.move_code()

    roscpp_shutdown()
