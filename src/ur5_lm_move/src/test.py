#!/usr/bin/env python

import sys
import rospy
import tf
import moveit_commander  # https://answers.ros.org/question/285216/importerror-no-module-named-moveit_commander/
import random
from geometry_msgs.msg import PoseStamped, Point, Quaternion
from math import pi
from  multiprocessing import  process
from copy import deepcopy

moveit_commander.roscpp_initialize(sys.argv)  # initialise moveit
rospy.init_node('lm_move', anonymous=True)  # create a node
listener = tf.TransformListener()

robot_arm = moveit_commander.MoveGroupCommander("right_manipulator")
# left_arm = moveit_commander.MoveGroupCommander("left_manipulator")
robot_arm.set_goal_orientation_tolerance(0.005)
robot_arm.set_planning_time(10)
robot_arm.set_num_planning_attempts(15)

# robot_arm.set_pose_reference_frame('rightbase_link')

# rospy.sleep(2)
# # Allow replanning to increase the odds of a solution

robot_arm.allow_replanning(True)
# waypoints=[]

# robot_arm.set_named_target('right_up')
# robot_arm.go()
# rospy.sleep(8)
start_pose = robot_arm.get_current_pose("righttool0")
print(start_pose)
mpose_transf = PoseStamped()
t = rospy.Time(0)    
listener.waitForTransform('/rightbase','/world',t,rospy.Duration(5))

if listener.canTransform('/rightbase','/world',t):
    mpose_transf = listener.transformPose('/rightbase',start_pose)
    print(mpose_transf)
else:
    rospy.logerr('Transformation is not possible!')
    sys.exit(0)


# print(robot_arm.get_current_joint_values())
# waypoints.append(start_pose)

Pose_goal = PoseStamped()
# Pose_goal.header.frame_id = 'base_link'
# Pose_goal.pose.position.x = 0.103190426853   # red line      0.2   0.2
# Pose_goal.pose.position.y = -0.827689781681  # green line  0.15   0.15
# Pose_goal.pose.position.z = 0.978219026059  # blue line   # 0.35   0.6
# # Pose_goal.pose.orientation = start_pose.orientation
# Pose_goal.pose.orientation.x =-0.556104592788
# Pose_goal.pose.orientation.y = 0.448401851544
# Pose_goal.pose.orientation.z = -0.495185387101
# Pose_goal.pose.orientation.w =  0.494444024955
# robot_arm.set_pose_target(Pose_goal)
# robot_arm.go()
# rospy.sleep(5)

Pose_goal.header.frame_id = 'rightbase_link'
Pose_goal.pose.position.x = -0.1955793462195291   # red line      0.2   0.2
Pose_goal.pose.position.y = 0.3456909607161672  # green line  0.15   0.15
Pose_goal.pose.position.z = 0.16049011785234568  # blue line   # 0.35   0.6
# Pose_goal.pose.orientation = start_pose.orientation
Pose_goal.pose.orientation.x = 0.28520761755123414
Pose_goal.pose.orientation.y = 0.24468120052517786
Pose_goal.pose.orientation.z = 0.6034841927127607
Pose_goal.pose.orientation.w = 0.7032741671255489
# robot_arm.set_pose_target(Pose_goal)
# robot_arm.go()
# # plan = robot_arm.plan()
# # robot_arm.execute(plan,True)
# rospy.sleep(5)

# waypoints.append(Pose_goal.pose)

# robot_arm.allow_replanning(True)
waypoints=[]

robot_arm.set_named_target('right_up')
robot_arm.go()
rospy.sleep(5)
start_pose = robot_arm.get_current_pose().pose

waypoints.append(start_pose)

Pose_goal = PoseStamped()
#Pose_goal.header.frame_id = 'rightbase_link'
Pose_goal.pose.position.x = 0.627686704853   # red line      0.2   0.2
Pose_goal.pose.position.y = -0.564707966388  # green line  0.15   0.15
Pose_goal.pose.position.z = 0.892842751217  # blue line   # 0.35   0.6
Pose_goal.pose.orientation = start_pose.orientation
# Pose_goal.pose.orientation.x =-0.92337150695
# Pose_goal.pose.orientation.y = -0.0250100609718

# Pose_goal.pose.orientation.z = -0.382969907812
# Pose_goal.pose.orientation.w =  -0.382969907812
# robot_arm.set_pose_target(Pose_goal)
# plan = robot_arm.plan()
# robot_arm.execute(plan,True)
# rospy.sleep(3)

waypoints.append(Pose_goal.pose)


# initialJointValues = [1.7002233551934294,
#                   0.3643429761400562,
#                   -1.009924514952229,
#                   5.495829022423809,

#                   -5.5426909420647155,to_link
# robot_arm.execute(plan,wait=True)
# rospy.sleep(3) # wait for robot to move to initial position
# fraction = 0
# maxtries = 1000
# attempts = 0

# robot_arm.set_start_state_to_current_state
# while fraction<1.0 and attempts<maxtries:
#     (plan,fraction)=robot_arm.compute_cartesian_path(
#         waypoints,
#         0.01,
#         0,
#         True
#     )
#     attempts+=1
#     print("attempt:%s " %attempts)to_link

#                   -5.5426909420647155,
#                   0.026168836510745756]
# robot_arm.set_joint_value_target(initialJointValues)
# plan = robot_arm.plan()
# robot_arm.execute(plan,wait=True)
# rospy.sleep(3) # wait for robot to move to initial position
fraction = 0
maxtries = 1000
attempts = 0

robot_arm.set_start_state_to_current_state
while fraction<1.0 and attempts<maxtries:
    (plan,fraction)=robot_arm.compute_cartesian_path(
        waypoints,
        0.01,
        0,
        True
    )
    attempts+=1
    print("attempt:%s " %attempts)
    if fraction==1:
        robot_arm.execute(plan)




# while not rospy.is_shutdown():
#     Pose_goal = robot_arm.get_current_pose()

#     print(Pose_goal)
#     t = rospy.Time(0)    
#     listener.waitForTransform('/rightbase_link','/world',t,rospy.Duration(5))

#     if listener.canTransform('/rightbase_link','/world',t):
#         trans_Pose_goal = listener.transformPose('/rightbase_link',Pose_goal)
#         print mpose_transf
#     else:
#         rospy.logerr('Transformation is not possible!')
#         sys.exit(0)theta

#     trans_Pose_goal = listener.transformPose('/rightbase_link',Pose_goal)
#     print(robot_arm.get_current_joint_values())
#     print(trans_Pose_goal)

# robot_arm.set_named_target("right_up")
# robot_arm.go()
# rospy.sleep(6)
# print("right arm pos: {}".format(robot_arm.get_current_joint_values()))
# left_arm.set_named_target("left_up")
# left_arm.go()
# rospy.sleep(6)
# print("left arm pos: {}".format(left_arm.get_current_joint_values()))


# rospy.sleep(5)