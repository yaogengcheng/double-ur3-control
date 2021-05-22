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
        self.robot_arm.allow_replanning(True)
        self.robot_arm.set_goal_position_tolerance(0.01)
        self.robot_arm.set_goal_orientation_tolerance(0.1)


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
        # self.robot_arm.set_pose_reference_frame('leftbase_link')
        # self.wpose = copy.deepcopy(self.Pose_goal.pose)
        # # self.wpose.position.x = 0.22844899063259538
        # # self.wpose.position.y = 0.3232940134968078
        # self.wpose.position.z += 0.12581195793171412
        # self.waypoints.append(copy.deepcopy(self.wpose))

        # wpose.position.x = 0.24706361090659945
        # wpose.position.y = 0.399076783202562
        # wpose.position.z = 0.11524980903243331
        # self.waypoints.append(copy.deepcopy(wpose))


        # wpose.position.x = 0.2384431148207265
        # wpose.position.y = 0.42584037071081504
        # wpose.position.z = 0.11603463304830763
        # self.waypoints.append(copy.deepcopy(wpose))

        # fraction = 0.0
        # attempts = 0

        # self.robot_arm.set_start_state_to_current_state()


        # while fraction < 1.0 and attempts < 100:
        #     (plan, fraction) = self.robot_arm.compute_cartesian_path(
		# 								self.waypoints,   # waypoints to follow
		# 								0.01,      # eef_step  
		# 								0.0)         # jump_threshold  
        #     attempts+=1
        #     print(attempts)

        # if fraction == 1.0:
        #     self.robot_arm.execute(plan, wait=True)
        # else:
        #     print("failed")








        self.pose_goal1 = PoseStamped()
        self.pose_goal1.header.frame_id = '/leftbase_link'
        self.pose_goal1.pose.position.x = 0.22844899063259538
        self.pose_goal1.pose.position.y = 0.3232940134968078
        self.pose_goal1.pose.position.z = 0.12581195793171412
        self.pose_goal1.pose.orientation.x = 0.651452360152262
        self.pose_goal1.pose.orientation.y = -0.22289710950191718
        self.pose_goal1.pose.orientation.z = 0.29974203617303874
        self.pose_goal1.pose.orientation.w = 0.6603646059402177
        self.robot_arm.set_pose_target(self.pose_goal1,"leftee_link")
        self.robot_arm.go()
        # rospy.sleep(1)
        # traj = self.robot_arm.plan()
        # self.robot_arm.execute(traj,wait=True)

        self.pose_goal2 = PoseStamped()
        self.pose_goal2.header.frame_id = '/leftbase_link'
        self.pose_goal2.pose.position.x = 0.24706361090659945
        self.pose_goal2.pose.position.y = 0.399076783202562
        self.pose_goal2.pose.position.z = 0.11524980903243331
        self.pose_goal2.pose.orientation.x = 0.6965603247710086
        self.pose_goal2.pose.orientation.y = -0.3587025266077312
        self.pose_goal2.pose.orientation.z = 0.24958274959805474
        self.pose_goal2.pose.orientation.w = 0.5690735123542583
        self.robot_arm.set_pose_target(self.pose_goal2,"leftee_link")
        self.robot_arm.go()
        # rospy.sleep(1)
        # traj = self.robot_arm.plan()
        # self.robot_arm.execute(traj,wait=True)

        self.pose_goal3 = PoseStamped()
        self.pose_goal3.header.frame_id = '/leftbase_link'
        self.pose_goal3.pose.position.x = 0.2384431148207265
        self.pose_goal3.pose.position.y = 0.42584037071081504
        self.pose_goal3.pose.position.z = 0.11603463304830763
        self.pose_goal3.pose.orientation.x = 0.6611332801180229
        self.pose_goal3.pose.orientation.y = -0.25768212027385673
        self.pose_goal3.pose.orientation.z = 0.31112563888658357
        self.pose_goal3.pose.orientation.w = 0.6322211224239263
        self.robot_arm.set_pose_target(self.pose_goal3,"leftee_link")
        self.robot_arm.go()
        # rospy.sleep(1)
        # traj = self.robot_arm.plan()
        # self.robot_arm.execute(traj,wait=True)

        self.pose_goal4 = PoseStamped()
        self.pose_goal4.header.frame_id = '/leftbase_link'    
        self.pose_goal4.pose.position.x = 0.20267968408694
        self.pose_goal4.pose.position.y = 0.3807708740746333
        self.pose_goal4.pose.position.z = 0.1621807421476515
        self.pose_goal4.pose.orientation.x = 0.6500893824643447
        self.pose_goal4.pose.orientation.y = -0.17866011127418618
        self.pose_goal4.pose.orientation.z = 0.19968845817208114
        self.pose_goal4.pose.orientation.w = 0.71104773336217
        self.robot_arm.set_pose_target(self.pose_goal4,"leftee_link")
        traj = self.robot_arm.plan()
        self.robot_arm.execute(traj,wait=True)

        self.pose_goal5 = PoseStamped()
        self.pose_goal5.header.frame_id = '/leftbase_link'    
        self.pose_goal5.pose.position.x = 0.19261972875892824
        self.pose_goal5.pose.position.y = 0.3487254051054294
        self.pose_goal5.pose.position.z = 0.17423391692094703
        self.pose_goal5.pose.orientation.x = 0.6623443436827807
        self.pose_goal5.pose.orientation.y = -0.20253221354720935
        self.pose_goal5.pose.orientation.z = 0.17253708109857815
        self.pose_goal5.pose.orientation.w = 0.7003653535927353
        self.robot_arm.set_pose_target(self.pose_goal5,"leftee_link")
        traj = self.robot_arm.plan()
        self.robot_arm.execute(traj,wait=True)

        self.pose_goal6 = PoseStamped()
        self.pose_goal6.header.frame_id = '/leftbase_link'    
        self.pose_goal6.pose.position.x = 0.2157980659367808
        self.pose_goal6.pose.position.y = 0.36988878402044156
        self.pose_goal6.pose.position.z = 0.1431730427943465
        self.pose_goal6.pose.orientation.x = 0.6607398125620346
        self.pose_goal6.pose.orientation.y = -0.24398334555829662
        self.pose_goal6.pose.orientation.z = 0.2786725065244132
        self.pose_goal6.pose.orientation.w = 0.6528680274703835
        self.robot_arm.set_pose_target(self.pose_goal6,"leftee_link")
        traj = self.robot_arm.plan()
        self.robot_arm.execute(traj,wait=True)

        self.pose_goal7 = PoseStamped()
        self.pose_goal7.header.frame_id = '/leftbase_link'    
        self.pose_goal7.pose.position.x = 0.22114246898738382
        self.pose_goal7.pose.position.y = 0.4464193752676767
        self.pose_goal7.pose.position.z = 0.13641486607992853
        self.pose_goal7.pose.orientation.x = 0.6791504338035828
        self.pose_goal7.pose.orientation.y = -0.2962309634157678
        self.pose_goal7.pose.orientation.z = 0.2696628694935311
        self.pose_goal7.pose.orientation.w = 0.6150478366718206
        self.robot_arm.set_pose_target(self.pose_goal7,"leftee_link")
        traj = self.robot_arm.plan()
        self.robot_arm.execute(traj,wait=True)

        self.pose_goal8 = PoseStamped()
        self.pose_goal8.header.frame_id = '/leftbase_link'    
        self.pose_goal8.pose.position.x = 0.2045166261139516
        self.pose_goal8.pose.position.y = 0.3927153592410454
        self.pose_goal8.pose.position.z = 0.15411342380507587
        self.pose_goal8.pose.orientation.x = 0.6693368542084698
        self.pose_goal8.pose.orientation.y = -0.2647950292869915
        self.pose_goal8.pose.orientation.z = 0.2573395449506767
        self.pose_goal8.pose.orientation.w = 0.6447077839360945
        self.robot_arm.set_pose_target(self.pose_goal8,"leftee_link")
        traj = self.robot_arm.plan()
        self.robot_arm.execute(traj,wait=True)

        self.pose_goal9 = PoseStamped()
        self.pose_goal9.header.frame_id = '/leftbase_link'    
        self.pose_goal9.pose.position.x = 0.2213576147649789
        self.pose_goal9.pose.position.y = 0.32543277234322004
        self.pose_goal9.pose.position.z = 0.1435574570513627
        self.pose_goal9.pose.orientation.x = 0.6325814784326014
        self.pose_goal9.pose.orientation.y = -0.24063914058631417
        self.pose_goal9.pose.orientation.z = 0.38283744641817435
        self.pose_goal9.pose.orientation.w = 0.6287837201947233
        self.robot_arm.set_pose_target(self.pose_goal9,"leftee_link")
        traj = self.robot_arm.plan()
        self.robot_arm.execute(traj,wait=True)


      
        # self.pose_goal1 = PoseStamped()
        # self.pose_goal1.header.frame_id = '/leftbase_link'
        # self.pose_goal1.pose.position.x =  0.2053894995328921
        # self.pose_goal1.pose.position.y =  0.35793405277574963
        # self.pose_goal1.pose.position.z =  0.15759221743998164
        # self.pose_goal1.pose.orientation.x = 0.6896423630881793
        # self.pose_goal1.pose.orientation.y =  -0.3133288084434257
        # self.pose_goal1.pose.orientation.z = 0.1543914767126632
        # self.pose_goal1.pose.orientation.w = 0.6343356688316201
        # self.robot_arm.set_pose_target(self.pose_goal1,"leftee_link")
        # # traj = self.robot_arm.plan()
        # # self.robot_arm.execute(traj,wait=True)
        # self.robot_arm.go()
        # # rospy.sleep(1)
    
    def back_initailPose(self):
        self.robot_arm.set_pose_target(self.Pose_goal,"leftee_link")
        self.robot_arm.go()
        rospy.sleep(5)

    def callback_left(self, data):
        print("left===========")
        self.next_pose_goal = data  
        rospy.loginfo(rospy.get_name() + ": kinect data %s" % data)
        # self.move_code()

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

    address = ('192.168.1.125', 4530)  
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)  
    s.connect(address)  

    while True:
        data = s.recv(512)
        reply = 'receive'  
        print ("the data received is",data.decode('utf-8'))
        if data.decode('utf-8')=='Hi there':
            tm = TestMove()
            # tm.kinectlistener()
            tm.move_code()
            # roscpp_shutdown()
            print("over")
            s.send(reply.encode('utf-8'))
            break  
    s.close() 

  


     

