#!/usr/bin/env python
# -*- coding: utf-8 -*-
import copy
import sys
<<<<<<< HEAD
<<<<<<< HEAD
import math
=======
>>>>>>> 25ae63914df697fee2763bb5a5387deacf7e59c9
=======
>>>>>>> 25ae63914df697fee2763bb5a5387deacf7e59c9

import Tkinter as tk
import geometry_msgs.msg
import moveit_commander
import moveit_msgs.msg
import rospy
import tkMessageBox
from Tkinter import Checkbutton

from leap_motion.msg import leapros


# class for moving the robot
class MoveIt(object):
    def __init__(self, robot_initialPos):
        self.subscriber = None  # we need to have the subscriber as an object so we can unregister/register when paused/resumed

        self.resumedRun = False  # flag to determine if it is the first run after pressing 'resume'
        self.paused = True  # flag to determine if program is paused
        self.executing = False  # flag to determine if we are currently executing a plan
<<<<<<< HEAD
<<<<<<< HEAD
        self.waypoints = []
        self.waypoints.append(robot_initialPos)
=======
>>>>>>> 25ae63914df697fee2763bb5a5387deacf7e59c9
=======
>>>>>>> 25ae63914df697fee2763bb5a5387deacf7e59c9

        self.prev_desiredPos = geometry_msgs.msg.Pose().position  # keep track of what the previous passed position was
        self.robot_zeroPos = geometry_msgs.msg.Pose().position  # keep track of the robot zero position
        self.hand_zeroPos = geometry_msgs.msg.Pose().position  # keep track of the hand zero position
        self.robot_initialPos = robot_initialPos  # keep track of the robot starting position

        self.enableDiffCheck = True  # If enabled will check for difference against a set max before allowing a move
        self.enableBoundaryCheck = True  # If enabled will check if robot is exceeding a boundary

        # boundaries | initial coords: x: 0.603 y: 0.124 z: 0.566
<<<<<<< HEAD
<<<<<<< HEAD
        self.maxLeft = self.robot_initialPos.position.x - 0.100  # x left
        self.maxRight = self.robot_initialPos.position.x + 0.100  # x right
        self.maxHeight = self.robot_initialPos.position.y - 0.300  # y height
        self.maxUp = self.robot_initialPos.position.z + 0.20  # z up
        self.maxDown = self.robot_initialPos.position.z - 0.20  # z down
=======
=======
>>>>>>> 25ae63914df697fee2763bb5a5387deacf7e59c9
        self.maxLeft = self.robot_initialPos.x - 0.100  # x left
        self.maxRight = self.robot_initialPos.x + 0.100  # x right
        self.maxHeight = self.robot_initialPos.y - 0.300  # y height
        self.maxUp = self.robot_initialPos.z + 0.20  # z up
        self.maxDown = self.robot_initialPos.z - 0.20  # z down
<<<<<<< HEAD
>>>>>>> 25ae63914df697fee2763bb5a5387deacf7e59c9
=======
>>>>>>> 25ae63914df697fee2763bb5a5387deacf7e59c9

        # maximum step, user cannot move more than this in one step
        self.maxStep = 0.05
        self.conversion_value = 0.0005
<<<<<<< HEAD
<<<<<<< HEAD
        self.prev_posArray = [0,0,0]
=======
>>>>>>> 25ae63914df697fee2763bb5a5387deacf7e59c9
=======
>>>>>>> 25ae63914df697fee2763bb5a5387deacf7e59c9

        # this is used to round co-ordinates when checking if previous and current coords are very similar
        self.dp = 3  # decimal points

        '''
        -----------------------------------------
            gui_mainWindow
        -----------------------------------------
        '''

        # main GUI window
        self.gui_mainWindow = tk.Tk()
        self.gui_mainWindow.title("LM-Move | Control Panel")
        self.gui_mainWindow.geometry("350x210")
        self.gui_mainWindow.grid_rowconfigure(0, weight=1)
        self.gui_mainWindow.grid_columnconfigure(0, weight=1)
        self.gui_mainWindow.resizable(False, False)

        # current position label
        self.currentPosText = tk.StringVar()
        self.currentPosLabel = tk.Label(self.gui_mainWindow, textvariable=self.currentPosText).grid(row=0, column=0)
        self.currentPosText.set("Current Position\n\nNone!\n")

        # pause button
        self.pauseButtonText = tk.StringVar()
        self.pauseButton = tk.Button(self.gui_mainWindow, textvariable=self.pauseButtonText,
                                     command=self.trackingControl, width=20)
        self.pauseButtonText.set("Resume")
        self.pauseButton.configure(bg="green")
        self.pauseButton.grid(row=1, column=0)

        # reset button
        self.resetButtonText = tk.StringVar()
        self.resetButton = tk.Button(self.gui_mainWindow, textvariable=self.resetButtonText,
                                     command=self.resetPosRobot, width=20)
        self.resetButtonText.set("Reset")
        self.resetButton.configure(bg="green")
        self.resetButton.grid(row=1, column=1)

        # toggle window button
        self.toggleInfoButton = tk.Button(self.gui_mainWindow, text="Positional Info", command=self.toggleInfoWindow,
                                          width=20).grid(row=2, column=0)

        # checkboxes
        self.checkStepBoolVar = tk.BooleanVar()
        self.checkStepBox = Checkbutton(self.gui_mainWindow, text="Robot Overstep Check",
                                        variable=self.checkStepBoolVar, width=20, anchor='w')
        self.checkStepBox.select()  # check by default
        self.checkStepBox.grid(row=3, column=0)

        self.checkBoundaryBoolVar = tk.BooleanVar()
        self.checkBoundaryBox = Checkbutton(self.gui_mainWindow, text="Robot Boundaries",
                                            variable=self.checkBoundaryBoolVar, width=20, anchor='w')
        self.checkBoundaryBox.select()  # check by default
        self.checkBoundaryBox.grid(row=4, column=0)

        # error label
        self.errorText = tk.StringVar()
        self.errorLabel = tk.Label(self.gui_mainWindow, textvariable=self.errorText, fg="red").grid(row=5, column=0)
        self.errorText.set("")  # there are no errors to begin with


        # LMtoRobot velocity scale
        self.LMtoRobt = tk.Scale(self.gui_mainWindow, label="LMtoRobot Scale", from_=1, to=10, orient=tk.HORIZONTAL,
                        showvalue=5,tickinterval=1, command=self.LMtoRObot, sliderlength=1).grid(row=0, column=1)

        '''
        -----------------------------------------
            gui_positionInfo
        -----------------------------------------
        '''

        self.gui_positionInfo_hidden = True  # keep track if info window is hidden or not

        # new window for zero pos information
        self.gui_positionInfo = tk.Toplevel()
        self.gui_positionInfo.title("LM-Move | Positional Info")
        self.gui_positionInfo.geometry("305x160")
        self.gui_positionInfo.resizable(False, False)
        self.gui_positionInfo.withdraw()

        # robot zero pos label
        self.robot_zeroPosText = tk.StringVar()
        self.robot_zeroPosLabel = tk.Label(self.gui_positionInfo, textvariable=self.robot_zeroPosText).grid(row=0,
                                                                                                            column=0)
        self.robot_zeroPosText.set("Robot Zero Position\n\nNone!\n")

        # previous robot zero pos label
        self.prev_robot_zeroPosText = tk.StringVar()
        self.prev_robot_zeroPosLabel = tk.Label(self.gui_positionInfo, textvariable=self.prev_robot_zeroPosText).grid(
            row=1, column=0)
        self.prev_robot_zeroPosText.set("Prev. Robot Zero Position\n\nNone!\n")

        # hand zero pos label
        self.hand_zeroPosText = tk.StringVar()
        self.hand_zeroPosLabel = tk.Label(self.gui_positionInfo, textvariable=self.hand_zeroPosText).grid(row=0,
                                                                                                          column=1)
        self.hand_zeroPosText.set("Hand Zero Position\n\nNone!\n")

        # previous hand zero pos label
        self.prev_hand_zeroPosText = tk.StringVar()
        self.prev_hand_zeroPosLabel = tk.Label(self.gui_positionInfo, textvariable=self.prev_hand_zeroPosText).grid(
            row=1, column=1)
        self.prev_hand_zeroPosText.set("Prev. Hand Zero Position\n\nNone!\n")

        # reset zero pos button
        self.resetButton = tk.Button(self.gui_positionInfo, text="Reset Robot Zero Position", command=self.resetZeroPos,
                                     width=20)
        self.resetButton.configure(bg="orange")
        self.resetButton.grid(row=3, columnspan=2)

        # subscribe to data
        self.gui_mainWindow.after(1, self.subscribeToTopic)
        # handle closing of GUI
        self.gui_mainWindow.protocol("WM_DELETE_WINDOW", self.onCloseQuit)
        self.gui_positionInfo.protocol("WM_DELETE_WINDOW", self.onCloseHide)
        # keep the GUI running
        self.gui_mainWindow.mainloop()

    # method to begin planning and executing movement of the robot
    def beginPlan(self, hand_pos):
        # check if this is the first run after a resume
        if self.resumedRun:
            # display previous zero positions
            self.prev_robot_zeroPosText.set("Prev. Robot Zero Position\nx: %.3f\ny: %.3f\nz: %.3f" \
                                            % (self.robot_zeroPos.x, self.robot_zeroPos.y, self.robot_zeroPos.z))
            self.prev_hand_zeroPosText.set("Prev. Hand Zero Position\nx: %.3f\ny: %.3f\nz: %.3f" \
                                           % (self.hand_zeroPos.x, self.hand_zeroPos.y, self.hand_zeroPos.z))
            # set the updated zero positions
            self.robot_zeroPos.x = group.get_current_pose().pose.position.x
            self.robot_zeroPos.y = group.get_current_pose().pose.position.y
            self.robot_zeroPos.z = group.get_current_pose().pose.position.z
            self.hand_zeroPos.x = hand_pos.x
            self.hand_zeroPos.y = hand_pos.y
            self.hand_zeroPos.z = hand_pos.z
            # display updated zero positions
            self.hand_zeroPosText.set("Hand Zero Position\nx: %.3f\ny: %.3f\nz: %.3f" \
                                      % (self.hand_zeroPos.x, self.hand_zeroPos.y, self.hand_zeroPos.z))
            self.robot_zeroPosText.set("Robot Zero Position\nx: %.3f\ny: %.3f\nz: %.3f" \
                                       % (self.robot_zeroPos.x, self.robot_zeroPos.y, self.robot_zeroPos.z))
            self.resumedRun = False

        # need to transform leap motion input
        desiredPos = self.getDesiredPos(hand_pos)

        # we round the positions so it is much easier to carry out checks
        prev_desiredPos_x = round(self.prev_desiredPos.x, self.dp)
        desiredPos_x = round(desiredPos.x, self.dp)
        prev_desiredPos_y = round(self.prev_desiredPos.y, self.dp)
        desiredPos_y = round(desiredPos.y, self.dp)
        prev_desiredPos_z = round(self.prev_desiredPos.z, self.dp)
        desiredPos_z = round(desiredPos.z, self.dp)

        '''
        We check 3 things:
        1. If the passed position is very similar to the current one (avoid duplicates)
        2. If the difference is larger than maxDiff (avoid large movements)
        3. If the new position exceeds the boundaries set
        '''

        # check if duplicate
        # duplicateCheck = prev_desiredPos_x == desiredPos_x \
        #                  or prev_desiredPos_y == desiredPos_y \
        #                  or prev_desiredPos_z == desiredPos_z
        #
        # if duplicateCheck:
        #     # update current position
        #     self.currentPosText.set("Current Position\nx: %.3f\ny: %.3f\nz: %.3f" \
        #                             % (desiredPos.x, desiredPos.y, desiredPos.z))
        #     # display error
        #     self.errorText.set("Attempted movement is too similar to previous one!")
        #     return

        # check if exceeding boundaries
        print("=========boundaryCheck==========")
        boundaryCheck_x = desiredPos.x > self.maxRight \
                          or desiredPos.x < self.maxLeft
        print("Current Position\nx: %.3f | %s :" % (desiredPos.x, boundaryCheck_x))
        print("maxright:% .3f ,maxleft: %.3f" % (self.maxRight, self.maxLeft))
        boundaryCheck_y = desiredPos.y < self.maxHeight
        print("Current Position\ny: %.3f | %s :" % (desiredPos.y, boundaryCheck_y))
        print("maxHeight:% .3f" % (self.maxHeight))
        boundaryCheck_z = desiredPos.z > self.maxUp \
                          or desiredPos.z < self.maxDown

        # if any of the checks are true and the checkbox is currently checked
        if (boundaryCheck_x or boundaryCheck_y or boundaryCheck_z) and self.checkBoundaryBoolVar.get():
            # update current position with additional info of what axis reached boundary
            self.currentPosText.set("Current Position\nx: %.3f | %s \ny: %.3f | %s\nz: %.3f | %s" \
                                    % (desiredPos.x, boundaryCheck_x, desiredPos.y, boundaryCheck_y, desiredPos.z,
                                       boundaryCheck_z))
            # display error
            self.errorText.set("Boundaries reached!")
            return

        # check if difference between previous and current attempt is too high (overstep)
        prevPosArray = [prev_desiredPos_x, prev_desiredPos_y, prev_desiredPos_z]
        # avoid checking if there is no previous position
        if any(x > 0.0 for x in prevPosArray):
            stepCheck_x = abs(prev_desiredPos_x - desiredPos_x) > self.maxStep
            stepCheck_y = abs(prev_desiredPos_y - desiredPos_y) > self.maxStep
            stepCheck_z = abs(prev_desiredPos_z - desiredPos_z) > self.maxStep
            # if any of the checks are true and the checkbox is currently checked
            if (stepCheck_x or stepCheck_y or stepCheck_z) and self.checkStepBoolVar.get():
                # update current position with additional info of what axis has overstepped
                self.currentPosText.set("Current Position\nx: %.3f | %s \ny: %.3f | %s\nz: %.3f | %s" \
                                        % (desiredPos.x, stepCheck_x, desiredPos.y, stepCheck_y, desiredPos.z,
                                           stepCheck_z))
                # display error
                self.errorText.set("Overstep detected!")
                return

        # clear any previous error set as in this run all checks are false
        self.errorText.set("")
        # we are now executing
        self.executing = True
        # keep track of previous position
        self.prev_desiredPos.x = desiredPos.x
        self.prev_desiredPos.y = desiredPos.y
        self.prev_desiredPos.z = desiredPos.z
        # all checks equate to false thus this is a valid attempt, log this
        rospy.loginfo("\n===> ATTEMPTING -> x: %.3f | y: %.3f | z: %.3f" % (desiredPos.x, desiredPos.y, desiredPos.z))
        # update the current position
        self.currentPosText.set(
            "Current Position\nx: %.3f\ny: %.3f\nz: %.3f" % (desiredPos.x, desiredPos.y, desiredPos.z))

<<<<<<< HEAD
<<<<<<< HEAD
        # pose_goal = geometry_msgs.msg.Pose()
        # pose_goal.orientation.w = 0.0
        # pose_goal.position = desiredPos  # red line      0.2   0.2
        # group.set_pose_target(pose_goal)
        # group.go(True)

        wpose = copy.deepcopy(group.get_current_pose().pose)
        wpose.position = desiredPos
        self.waypoints.append(copy.deepcopy(wpose))
        # plan the movement
        fraction = 0
        maxtries = 100
        attempts = 0
        group.set_start_state_to_current_state()
        while fraction<1.0 and attempts<maxtries:
            (plan,fraction)=group.compute_cartesian_path(
                self.waypoints,
                0.01,
                0,
                True
            )
            attempts+=1
            print("attempt:%s " %attempts)
        # execute the plan
        if fraction == 1.0:
            group.execute(plan)
            self.waypoints.pop(0)
        else:
            print("=========executing fail==========")

=======
=======
>>>>>>> 25ae63914df697fee2763bb5a5387deacf7e59c9
        pose_goal = geometry_msgs.msg.Pose()
        pose_goal.orientation.w = 0.0
        pose_goal.position = desiredPos  # red line      0.2   0.2
        group.set_pose_target(pose_goal)
        group.go(True)

        # waypoints = []
        # waypoints.append(group.get_current_pose().pose)
        # # set the pose for x, y and z
        # wpose = geometry_msgs.msg.Pose()
        # wpose.position.x = desiredPos.x
        # wpose.position.y = desiredPos.z  # we switch z and y because the leap motion is faced upwards
        # wpose.position.z = desiredPos.y
        # waypoints.append(copy.deepcopy(wpose))
        # cartesian = True



        # if cartesian:
        #     fraction = 0  # 路径规划覆盖率
        #     maxtries = 100  # 最大尝试规划次数
        #     attempts = 0  # 已经尝试规划次数
        #
        #     # 设置机器臂当前的状态作为运动初始状态
        #     group.set_start_state_to_current_state()
        #
        #     # 尝试规划一条笛卡尔空间下的路径，依次通过所有路点
        #     while fraction < 1.0 and attempts < maxtries:
        #         (plan, fraction) = group.compute_cartesian_path(
        #             waypoints,  # waypoint poses，路点列表
        #             0.01,  # eef_step，终端步进值
        #             0.0,  # jump_threshold，跳跃阈值
        #             True)  # avoid_collisions，避障规划
        #
        #         # 尝试次数累加
        #         attempts += 1
        #
        #         # 打印运动规划进程
        #         if attempts % 10 == 0:
        #             rospy.loginfo("Still trying after " + str(attempts) + " attempts...")
        #
        #     # 如果路径规划成功（覆盖率100%）,则开始控制机械臂运动
        #     if fraction == 1.0:
        #         rospy.loginfo("Path computed successfully. Moving the arm.")
        #         group.execute(plan)
        #         rospy.loginfo("Path execution complete.")
        #     # 如果路径规划失败，则打印失败信息
        #     else:
        #         rospy.loginfo("Path planning failed with only " + str(fraction) + " success after " + str(
        #             maxtries) + " attempts.")

                # append current pose to the waypoints array
        # waypoints = []
        # waypoints.append(group.get_current_pose().pose)
        # # set the pose for x, y and z
        # wpose = geometry_msgs.msg.Pose()
        # wpose.position.x = desiredPos.x
        # wpose.position.y = desiredPos.z # we switch z and y because the leap motion is faced upwards
        # wpose.position.z = desiredPos.y
        # waypoints.append(copy.deepcopy(wpose))
        # # plan the movement
        # (plan, fraction) = group.compute_cartesian_path(
        #                         waypoints,   # waypoints to follow
        #                         0.01,        # eef_step
        #                         0.0)         # jump_threshold
        # # execute the plan
        # group.execute(plan)
        # we are no longer executing
<<<<<<< HEAD
>>>>>>> 25ae63914df697fee2763bb5a5387deacf7e59c9
=======
>>>>>>> 25ae63914df697fee2763bb5a5387deacf7e59c9
        self.executing = False

    # method to begin sending information to the planner
    def beginExecution(self, leap_msg):
        if not self.executing and not self.paused:
            # store xyz information in a variable
            palmPos = leap_msg.palmpos
            # create an array of the xyz
            posArray = [palmPos.x, palmPos.y, palmPos.z]
            # check if x,y,z is > than 0.0 (avoid passing 0.0 coordinates)
            if any(x > 0.0 for x in posArray):
<<<<<<< HEAD
<<<<<<< HEAD
                if math.pow(self.prev_posArray[0]-posArray[0],2)+math.pow(self.prev_posArray[1]-posArray[1],2)+math.pow(self.prev_posArray[2]-posArray[2],2) > 0.01:
                    self.prev_posArray = posArray
                    self.beginPlan(palmPos)
=======
                self.beginPlan(palmPos)
>>>>>>> 25ae63914df697fee2763bb5a5387deacf7e59c9
=======
                self.beginPlan(palmPos)
>>>>>>> 25ae63914df697fee2763bb5a5387deacf7e59c9

    # method to get the desired position of the robot
    def getDesiredPos(self, hand_pos):
        # lower leap motion values by this much

        # adjust the offset and pass back the new coordinates
        desired_pos = geometry_msgs.msg.Pose().position
        desired_pos.x = self.robot_zeroPos.x - ((hand_pos.x - self.hand_zeroPos.x) * self.conversion_value)  # inverted
        desired_pos.y = self.robot_zeroPos.y + ((hand_pos.y - self.hand_zeroPos.y) * self.conversion_value)
        desired_pos.z = self.robot_zeroPos.z + ((hand_pos.z - self.hand_zeroPos.z) * self.conversion_value)
        return desired_pos

    # method to subscribe to the ros topic
    def subscribeToTopic(self):
        # register to the topic
        self.subscriber = rospy.Subscriber("/leapmotion/data", leapros, self.beginExecution, queue_size=1)

    # method for pausing/unpausing the tracking of the users hand
    def trackingControl(self, *ignore):
        if self.paused:
            # adjust button text/colour
            self.pauseButtonText.set("Pause")
            self.pauseButton.configure(bg="yellow")
            # adjust flags
            self.paused = False
            self.resumedRun = True
            # register back to the topic
            self.subscribeToTopic()
        else:
            # unregister from the topic
            self.subscriber.unregister()
            # adjust button text/colour
            self.pauseButtonText.set("Resume")
            self.pauseButton.configure(bg="green")
            # adjust flag
            self.paused = True
            # if we are paused we don't want to see errors
            self.errorText.set("")

    # method for reset the position of the robot
    def resetPosRobot(self, *ignore):
        # move the robot to an initial comfortable position
        initialJointValues = [4.2698279885448765e-05,
                              4.696499257471782,
                              -1.4984525252859724,
                              3.31957495687096,
                              -6.283175718835332,
                              -6.283185179581844]
        group.set_joint_value_target(initialJointValues)
        plan = group.plan()
        group.execute(plan)
        rospy.sleep(1)  # wait for robot to move to initial position
        self.paused = False
        self.trackingControl()

    # action method for pressing the "reset zero position" button
    def resetZeroPos(self, *ignore):
        if not self.paused:
            self.robot_zeroPos.x = self.robot_initialPos.x
            self.robot_zeroPos.y = self.robot_initialPos.y
            self.robot_zeroPos.z = self.robot_initialPos.z
            self.robot_zeroPosText.set("Zero Position\nx: %.3f\ny: %.3f\nz: %.3f" % (
            self.robot_zeroPos.x, self.robot_zeroPos.y, self.robot_zeroPos.z))
            tkMessageBox.showinfo("Information", "Zero position has been reset")
        else:
            tkMessageBox.showerror("Error", "Cannot reset zero position because the program is currently paused")

    # action method for toggling the info window popup when pressing the button
    def toggleInfoWindow(self, *ignore):
        if self.gui_positionInfo_hidden:
            self.gui_positionInfo.deiconify()
            self.gui_positionInfo_hidden = False
        else:
            self.gui_positionInfo.withdraw()
            self.gui_positionInfo_hidden = True

    # action method for hiding a window upon clicking [x]
    def onCloseHide(self, *ignore):
        self.gui_positionInfo.withdraw()
        self.gui_positionInfo_hidden = True

    # action method for quitting the program upon clicking [x]
    def onCloseQuit(self, *ignore):
        if tkMessageBox.askokcancel("Quit", "Do you want to quit?"):
            self.gui_mainWindow.destroy()

    def LMtoRObot(self,v):
        self.conversion_value = 0.0001*float(v)

moveit_commander.roscpp_initialize(sys.argv)  # initialise moveit
rospy.init_node('lm_move', anonymous=True)  # create a node
display_trajectory_publisher = rospy.Publisher(
    '/move_group/display_planned_path',
    moveit_msgs.msg.DisplayTrajectory,
    queue_size=1)  # we don't want to buffer any messages
rospy.sleep(10)  # Wait for rviz to initialise
rospy.loginfo("\n=[ INFO: Waiting for RVIZ: DONE! ]=\n")

# This object is an interface to one group of joints.
group = moveit_commander.MoveGroupCommander("manipulator")

if __name__ == '__main__':
    try:
        # move the robot to an initial comfortable position
        initialJointValues = [4.2698279885448765e-05,
                              4.696499257471782,
                              -1.4984525252859724,
                              3.31957495687096,
                              -6.283175718835332,
                              -6.283185179581844]
        group.set_joint_value_target(initialJointValues)
        plan = group.plan()
        group.execute(plan)
        rospy.sleep(3)  # wait for robot to move to initial position

        # save these positions on run
<<<<<<< HEAD
<<<<<<< HEAD
        robot_initialPos = group.get_current_pose().pose
=======
=======
>>>>>>> 25ae63914df697fee2763bb5a5387deacf7e59c9
        robot_initialPos = geometry_msgs.msg.Pose().position
        robot_initialPos.x = group.get_current_pose().pose.position.x
        robot_initialPos.y = group.get_current_pose().pose.position.y
        robot_initialPos.z = group.get_current_pose().pose.position.z
<<<<<<< HEAD
>>>>>>> 25ae63914df697fee2763bb5a5387deacf7e59c9
=======
>>>>>>> 25ae63914df697fee2763bb5a5387deacf7e59c9

        # instance of MoveIt() class
        mi = MoveIt(robot_initialPos)
    except rospy.ROSInterruptException:
        pass
