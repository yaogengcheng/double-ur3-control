#!/usr/bin/env python  
import tf
import rospy
import roslib
if __name__ == '__main__':
    rospy.init_node('turtle_tf_listener')
    listener = tf.TransformListener()
    while not rospy.is_shutdown():
        try:
<<<<<<< HEAD
          (trans,rot)=listener.lookupTransform('/base_link','/rightbase_link',rospy.Time(0))
=======
          (trans,rot)=listener.lookupTransform('/camera_link','/rightbase_link',rospy.Time(0))
>>>>>>> 25ae63914df697fee2763bb5a5387deacf7e59c9
        except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
            continue
        print trans
        print rot
        
   