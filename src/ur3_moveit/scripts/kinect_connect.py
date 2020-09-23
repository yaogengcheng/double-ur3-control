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
        rospy.init_node('kinect_ur3_move', anonymous=True)
        listener = tf.TransformListener()

        self.scene = PlanningSceneInterface()
        self.robot_cmd = RobotCommander()
        self.Pose_goal = PoseStamped()
        self.next_pose_goal = PoseStamped()
        self.waypoints = []
        self.robot_arm = MoveGroupCommander(GROUP_NAME_ARM)

        print("====== move plan go to initial pose ======")
        self.Pose_goal.header.frame_id = 'base_link'
        self.Pose_goal.pose.position.x = 0.103190426853   # red line      0.2   0.2
        self.Pose_goal.pose.position.y = -0.827689781681  # green line  0.15   0.15
        self.Pose_goal.pose.position.z = 0.978219026059  # blue line   # 0.35   0.6
        # Pose_goal.pose.orientation = start_pose.orientation
        self.Pose_goal.pose.orientation.x =-0.556104592788
        self.Pose_goal.pose.orientation.y = 0.448401851544
        self.Pose_goal.pose.orientation.z = -0.495185387101
        self.Pose_goal.pose.orientation.w =  0.494444024955
        self.robot_arm.set_pose_target(self.Pose_goal)
        self.robot_arm.go()
        rospy.sleep(2)
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
        # t = rospy.Time(0)    
        # listener.waitForTransform('/rightbase_link','/world',t,rospy.Duration(5))

        # if listener.canTransform('/rightbase_link','/world',t):
        #     mpose_transf = listener.transformPose('/rightbase_link',start_pose)
        #     print mpose_transf
        # else:
        #      rospy.logerr('Transformation is not possible!')
     
        wpose = copy.deepcopy(self.Pose_goal.pose)
        wpose.position.x = self.next_pose_goal.pose.position.x
        wpose.position.y = self.next_pose_goal.pose.position.y  
        wpose.position.z = self.next_pose_goal.pose.position.z
        self.waypoints.append(copy.deepcopy(wpose))
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
            self.waypoints.pop(0)
        else:
            print("=========executing fail==========")
       

    def callback(self, data):
        self.next_pose_goal = data
        self.move_code()
        rospy.loginfo(rospy.get_name() + ": kinect data %s" % data)

    def listener(self):
        # rospy.Subscriber("leapmotion/raw", leap, callback)
        rospy.Subscriber("kinect/data", PoseStamped, self.callback)

        rospy.spin()

if __name__ == '__main__':

    tm = TestMove()
    tm.listener()

    roscpp_shutdown()
