#!/usr/bin/env python
import rospy
from std_msgs.msg import String
from geometry_msgs.msg import Pose, Point, Quaternion


def callback(data):
    rospy.loginfo(rospy.get_caller_id() + "I heard %s", data)


def listener():
    rospy.init_node('listener', anonymous=True)
    rospy.Subscriber("chatter", Pose, callback)
    rospy.spin()


if __name__ == '__main__':
    listener()
