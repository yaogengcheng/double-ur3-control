;; Auto-generated. Do not edit!


(when (boundp 'leap_motion::Arm)
  (if (not (find-package "LEAP_MOTION"))
    (make-package "LEAP_MOTION"))
  (shadow 'Arm (find-package "LEAP_MOTION")))
(unless (find-package "LEAP_MOTION::ARM")
  (make-package "LEAP_MOTION::ARM"))

(in-package "ROS")
;;//! \htmlinclude Arm.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass leap_motion::Arm
  :super ros::object
  :slots (_header _elbow _wrist _center _direction ))

(defmethod leap_motion::Arm
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:elbow __elbow) (instance geometry_msgs::Pose :init))
    ((:wrist __wrist) (instance geometry_msgs::Pose :init))
    ((:center __center) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:direction __direction) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _elbow __elbow)
   (setq _wrist __wrist)
   (setq _center __center)
   (setq _direction __direction)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:elbow
   (&rest __elbow)
   (if (keywordp (car __elbow))
       (send* _elbow __elbow)
     (progn
       (if __elbow (setq _elbow (car __elbow)))
       _elbow)))
  (:wrist
   (&rest __wrist)
   (if (keywordp (car __wrist))
       (send* _wrist __wrist)
     (progn
       (if __wrist (setq _wrist (car __wrist)))
       _wrist)))
  (:center
   (&optional __center)
   (if __center (setq _center __center)) _center)
  (:direction
   (&rest __direction)
   (if (keywordp (car __direction))
       (send* _direction __direction)
     (progn
       (if __direction (setq _direction (car __direction)))
       _direction)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Pose _elbow
    (send _elbow :serialization-length)
    ;; geometry_msgs/Pose _wrist
    (send _wrist :serialization-length)
    ;; float32[] _center
    (* 4    (length _center)) 4
    ;; geometry_msgs/Vector3 _direction
    (send _direction :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Pose _elbow
       (send _elbow :serialize s)
     ;; geometry_msgs/Pose _wrist
       (send _wrist :serialize s)
     ;; float32[] _center
     (write-long (length _center) s)
     (dotimes (i (length _center))
       (sys::poke (elt _center i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; geometry_msgs/Vector3 _direction
       (send _direction :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Pose _elbow
     (send _elbow :deserialize buf ptr-) (incf ptr- (send _elbow :serialization-length))
   ;; geometry_msgs/Pose _wrist
     (send _wrist :deserialize buf ptr-) (incf ptr- (send _wrist :serialization-length))
   ;; float32[] _center
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _center (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _center i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; geometry_msgs/Vector3 _direction
     (send _direction :deserialize buf ptr-) (incf ptr- (send _direction :serialization-length))
   ;;
   self)
  )

(setf (get leap_motion::Arm :md5sum-) "b93012a87e6395b9975695d8d7a942db")
(setf (get leap_motion::Arm :datatype-) "leap_motion/Arm")
(setf (get leap_motion::Arm :definition-)
      "std_msgs/Header header

# The position and orientation of the elbow. 
geometry_msgs/Pose elbow

# The position and orientation of the wrist. 
geometry_msgs/Pose wrist

# The midpoint of the forearm. 
float32[] center

# The direction vector of the forearm
geometry_msgs/Vector3 direction

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

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :leap_motion/Arm "b93012a87e6395b9975695d8d7a942db")


