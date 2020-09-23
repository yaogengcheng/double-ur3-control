;; Auto-generated. Do not edit!


(when (boundp 'leap_motion::leap)
  (if (not (find-package "LEAP_MOTION"))
    (make-package "LEAP_MOTION"))
  (shadow 'leap (find-package "LEAP_MOTION")))
(unless (find-package "LEAP_MOTION::LEAP")
  (make-package "LEAP_MOTION::LEAP"))

(in-package "ROS")
;;//! \htmlinclude leap.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass leap_motion::leap
  :super ros::object
  :slots (_header _hand_direction _hand_normal _hand_palm_pos _hand_pitch _hand_roll _hand_yaw ))

(defmethod leap_motion::leap
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:hand_direction __hand_direction) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:hand_normal __hand_normal) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:hand_palm_pos __hand_palm_pos) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:hand_pitch __hand_pitch) 0.0)
    ((:hand_roll __hand_roll) 0.0)
    ((:hand_yaw __hand_yaw) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _hand_direction __hand_direction)
   (setq _hand_normal __hand_normal)
   (setq _hand_palm_pos __hand_palm_pos)
   (setq _hand_pitch (float __hand_pitch))
   (setq _hand_roll (float __hand_roll))
   (setq _hand_yaw (float __hand_yaw))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:hand_direction
   (&optional __hand_direction)
   (if __hand_direction (setq _hand_direction __hand_direction)) _hand_direction)
  (:hand_normal
   (&optional __hand_normal)
   (if __hand_normal (setq _hand_normal __hand_normal)) _hand_normal)
  (:hand_palm_pos
   (&optional __hand_palm_pos)
   (if __hand_palm_pos (setq _hand_palm_pos __hand_palm_pos)) _hand_palm_pos)
  (:hand_pitch
   (&optional __hand_pitch)
   (if __hand_pitch (setq _hand_pitch __hand_pitch)) _hand_pitch)
  (:hand_roll
   (&optional __hand_roll)
   (if __hand_roll (setq _hand_roll __hand_roll)) _hand_roll)
  (:hand_yaw
   (&optional __hand_yaw)
   (if __hand_yaw (setq _hand_yaw __hand_yaw)) _hand_yaw)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[3] _hand_direction
    (* 8    3)
    ;; float64[3] _hand_normal
    (* 8    3)
    ;; float64[3] _hand_palm_pos
    (* 8    3)
    ;; float64 _hand_pitch
    8
    ;; float64 _hand_roll
    8
    ;; float64 _hand_yaw
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[3] _hand_direction
     (dotimes (i 3)
       (sys::poke (elt _hand_direction i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _hand_normal
     (dotimes (i 3)
       (sys::poke (elt _hand_normal i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _hand_palm_pos
     (dotimes (i 3)
       (sys::poke (elt _hand_palm_pos i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _hand_pitch
       (sys::poke _hand_pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _hand_roll
       (sys::poke _hand_roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _hand_yaw
       (sys::poke _hand_yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[3] _hand_direction
   (dotimes (i (length _hand_direction))
     (setf (elt _hand_direction i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _hand_normal
   (dotimes (i (length _hand_normal))
     (setf (elt _hand_normal i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _hand_palm_pos
   (dotimes (i (length _hand_palm_pos))
     (setf (elt _hand_palm_pos i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64 _hand_pitch
     (setq _hand_pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _hand_roll
     (setq _hand_roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _hand_yaw
     (setq _hand_yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get leap_motion::leap :md5sum-) "3e9a0dc7fd1a98f1d7489e9011c78807")
(setf (get leap_motion::leap :datatype-) "leap_motion/leap")
(setf (get leap_motion::leap :definition-)
      "##################################################
## Deprecated and will be removed in the future ##
##################################################

Header header

float64[3] hand_direction
float64[3] hand_normal
float64[3] hand_palm_pos
float64 hand_pitch
float64 hand_roll
float64 hand_yaw

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :leap_motion/leap "3e9a0dc7fd1a98f1d7489e9011c78807")


