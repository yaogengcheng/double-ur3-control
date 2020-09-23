#!/usr/bin/env python
# -*- coding: utf-8 -*-

import rospy, sys
import moveit_commander
from moveit_commander import MoveGroupCommander, PlanningSceneInterface
from moveit_msgs.msg import  PlanningScene, ObjectColor
from geometry_msgs.msg import PoseStamped, Pose

class MoveItObstaclesDemo:
    def __init__(self):

        moveit_commander.roscpp_initialize(sys.argv)  # initialise moveit
        rospy.init_node('lm_move', anonymous=True)  # create a node

        arm = moveit_commander.MoveGroupCommander("right_manipulator")
        
        # 初始化场景对象
        scene = PlanningSceneInterface()
        
        # 创建一个发布场景变化信息的发布者
        self.scene_pub = rospy.Publisher('planning_scene', PlanningScene, queue_size=5)
        
        # 创建一个存储物体颜色的字典对象
        self.colors = dict()
        
        # 等待场景准备就绪
        rospy.sleep(1)
                    
        # 获取终端link的名称
        end_effector_link = arm.get_end_effector_link()
        
        # 设置位置(单位：米)和姿态（单位：弧度）的允许误差
        arm.set_goal_position_tolerance(0.01)
        arm.set_goal_orientation_tolerance(0.05)
       
        # 当运动规划失败后，允许重新规划
        arm.allow_replanning(True)
        
        # 设置目标位置所使用的参考坐标系
        reference_frame = 'rightbase_link'
        arm.set_pose_reference_frame(reference_frame)
        
        # 控制机械臂先回到初始化位置
        # arm.set_named_target('right_up')
        # arm.go()
        # rospy.sleep(5)

        wall_size = [2, 0.05, 2]
      
        wall_pose = PoseStamped()
        wall_pose.header.frame_id = 'world'
        wall_pose.pose.position.x = 0
        wall_pose.pose.position.y = -0.20
        wall_pose.pose.position.z = 1
        wall_pose.pose.orientation.w = 0
        # 将桌子设置成红色，两个box设置成橙色
        self.setColor('wall', 255, 255, 255, 1.0)
        # 将场景中的颜色设置发布
        self.sendColors() 
        scene.add_box('wall', wall_pose, wall_size)
        

        Pose_goal = PoseStamped()
        Pose_goal.header.frame_id = 'rightbase_link'
        Pose_goal.pose.position.x = -0.234666801624   # red line      0.2   0.2
        Pose_goal.pose.position.y = 0.463673741637  # green line  0.15   0.15
        Pose_goal.pose.position.z = 0.23632011805  # blue line   # 0.35   0.6
        Pose_goal.pose.orientation.x = -0.223798960073
        Pose_goal.pose.orientation.y = -0.726641725375
        Pose_goal.pose.orientation.z = -0.586249390912
        Pose_goal.pose.orientation.w = 0.279673881636
        arm.set_pose_target(Pose_goal)
        arm.go(True)
        rospy.sleep(3)

        arm.set_named_target('right_up')
        arm.go()
        rospy.sleep(3)

        # 关闭并退出moveit
        moveit_commander.roscpp_shutdown()
        moveit_commander.os._exit(0)

     # 设置场景物体的颜色
    def setColor(self, name, r, g, b, a = 0.9):
        # 初始化moveit颜色对象
        color = ObjectColor()
        
        # 设置颜色值
        color.id = name
        color.color.r = r
        color.color.g = g
        color.color.b = b
        color.color.a = a
        
        # 更新颜色字典
        self.colors[name] = color

    # 将颜色设置发送并应用到moveit场景当中
    def sendColors(self):
        # 初始化规划场景对象
        p = PlanningScene()

        # 需要设置规划场景是否有差异     
        p.is_diff = True
        
        # 从颜色字典中取出颜色设置
        for color in self.colors.values():
            p.object_colors.append(color)
        
        # 发布场景物体颜色设置
        self.scene_pub.publish(p)
    

if __name__ == "__main__":
    try:
        MoveItObstaclesDemo()
    except KeyboardInterrupt:
        raise
    

    
