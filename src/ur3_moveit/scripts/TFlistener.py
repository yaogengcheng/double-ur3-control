#!/usr/bin/env python  
import tf
import rospy
import roslib
if __name__ == '__main__':
    rospy.init_node('turtle_tf_listener')
    listener = tf.TransformListener()
    while not rospy.is_shutdown():
        try:
          (trans,rot)=listener.lookupTransform('/camera_link','/rightbase_link',rospy.Time(0))
        except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
            continue
        print trans
        print rot
        
   