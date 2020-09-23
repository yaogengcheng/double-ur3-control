;; Auto-generated. Do not edit!


(when (boundp 'leap_motion::Finger)
  (if (not (find-package "LEAP_MOTION"))
    (make-package "LEAP_MOTION"))
  (shadow 'Finger (find-package "LEAP_MOTION")))
(unless (find-package "LEAP_MOTION::FINGER")
  (make-package "LEAP_MOTION::FINGER"))

(in-package "ROS")
;;//! \htmlinclude Finger.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass leap_motion::Finger
  :super ros::object
  :slots (_header _lmc_finger_id _type _length _width _to_string _bone_list ))

(defmethod leap_motion::Finger
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:lmc_finger_id __lmc_finger_id) 0)
    ((:type __type) 0)
    ((:length __length) 0.0)
    ((:width __width) 0.0)
    ((:to_string __to_string) "")
    ((:bone_list __bone_list) (let (r) (dotimes (i 0) (push (instance leap_motion::Bone :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _lmc_finger_id (round __lmc_finger_id))
   (setq _type (round __type))
   (setq _length (float __length))
   (setq _width (float __width))
   (setq _to_string (string __to_string))
   (setq _bone_list __bone_list)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:lmc_finger_id
   (&optional __lmc_finger_id)
   (if __lmc_finger_id (setq _lmc_finger_id __lmc_finger_id)) _lmc_finger_id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:to_string
   (&optional __to_string)
   (if __to_string (setq _to_string __to_string)) _to_string)
  (:bone_list
   (&rest __bone_list)
   (if (keywordp (car __bone_list))
       (send* _bone_list __bone_list)
     (progn
       (if __bone_list (setq _bone_list (car __bone_list)))
       _bone_list)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _lmc_finger_id
    4
    ;; uint8 _type
    1
    ;; float32 _length
    4
    ;; float32 _width
    4
    ;; string _to_string
    4 (length _to_string)
    ;; leap_motion/Bone[] _bone_list
    (apply #'+ (send-all _bone_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _lmc_finger_id
       (write-long _lmc_finger_id s)
     ;; uint8 _type
       (write-byte _type s)
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _to_string
       (write-long (length _to_string) s) (princ _to_string s)
     ;; leap_motion/Bone[] _bone_list
     (write-long (length _bone_list) s)
     (dolist (elem _bone_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _lmc_finger_id
     (setq _lmc_finger_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _to_string
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _to_string (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; leap_motion/Bone[] _bone_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bone_list (let (r) (dotimes (i n) (push (instance leap_motion::Bone :init) r)) r))
     (dolist (elem- _bone_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get leap_motion::Finger :md5sum-) "c62c3b47717473d8242b45f476fc55c7")
(setf (get leap_motion::Finger :datatype-) "leap_motion/Finger")
(setf (get leap_motion::Finger :definition-)
      "std_msgs/Header header

# A unique id given to this finger
int32 lmc_finger_id

# The name of this finger. 
uint8 type

# The estimated length of the finger in meters. 
float32 length

# The estimated width of the finger in meters.
float32 width

# A string containing a brief, human readable description of the Finger object. 
string to_string

# List of bones associated with this finger
Bone[] bone_list
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

================================================================================
MSG: leap_motion/Bone
std_msgs/Header header

# The name of this bone. 
uint8 type

# The estimated length of the bone in meters.
float32 length

# The estimated with of the bone in meters.
float32 width

# A string containing a brief, human readable description of the Bone object. 
string to_string

# The base of the bone, closest to the wrist. 
geometry_msgs/Pose bone_start

# The end of the bone, closest to the finger tip. 
geometry_msgs/Pose bone_end

# The midpoint of the bone. 
float32[] center

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :leap_motion/Finger "c62c3b47717473d8242b45f476fc55c7")


