#!/usr/bin/env python
import rospy
from std_msgs.msg import String
from geometry_msgs.msg import Pose, Point, Quaternion


def talker():
    pub = rospy.Publisher('chatter', Pose, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(5)

    pose_goal = Pose()
    pose_goal.orientation.w = 0.0
    pose_goal.position.x = 0.4 # red line      0.2   0.2
    pose_goal.position.y = 0.15  # green line  0.15   0.15
    pose_goal.position.z = 0.2  # blue line   # 0.35   0.6
    while not rospy.is_shutdown():
#       hello_str = "hello world %s" % rospy.get_time()

        rospy.loginfo(pose_goal)
        pub.publish(pose_goal)
        rate.sleep()


if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
