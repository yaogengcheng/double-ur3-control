;; Auto-generated. Do not edit!


(when (boundp 'leap_motion::leapros)
  (if (not (find-package "LEAP_MOTION"))
    (make-package "LEAP_MOTION"))
  (shadow 'leapros (find-package "LEAP_MOTION")))
(unless (find-package "LEAP_MOTION::LEAPROS")
  (make-package "LEAP_MOTION::LEAPROS"))

(in-package "ROS")
;;//! \htmlinclude leapros.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass leap_motion::leapros
  :super ros::object
  :slots (_header _direction _normal _palmpos _ypr _thumb_metacarpal _thumb_proximal _thumb_intermediate _thumb_distal _thumb_tip _index_metacarpal _index_proximal _index_intermediate _index_distal _index_tip _middle_metacarpal _middle_proximal _middle_intermediate _middle_distal _middle_tip _ring_metacarpal _ring_proximal _ring_intermediate _ring_distal _ring_tip _pinky_metacarpal _pinky_proximal _pinky_intermediate _pinky_distal _pinky_tip ))

(defmethod leap_motion::leapros
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:direction __direction) (instance geometry_msgs::Vector3 :init))
    ((:normal __normal) (instance geometry_msgs::Vector3 :init))
    ((:palmpos __palmpos) (instance geometry_msgs::Point :init))
    ((:ypr __ypr) (instance geometry_msgs::Vector3 :init))
    ((:thumb_metacarpal __thumb_metacarpal) (instance geometry_msgs::Point :init))
    ((:thumb_proximal __thumb_proximal) (instance geometry_msgs::Point :init))
    ((:thumb_intermediate __thumb_intermediate) (instance geometry_msgs::Point :init))
    ((:thumb_distal __thumb_distal) (instance geometry_msgs::Point :init))
    ((:thumb_tip __thumb_tip) (instance geometry_msgs::Point :init))
    ((:index_metacarpal __index_metacarpal) (instance geometry_msgs::Point :init))
    ((:index_proximal __index_proximal) (instance geometry_msgs::Point :init))
    ((:index_intermediate __index_intermediate) (instance geometry_msgs::Point :init))
    ((:index_distal __index_distal) (instance geometry_msgs::Point :init))
    ((:index_tip __index_tip) (instance geometry_msgs::Point :init))
    ((:middle_metacarpal __middle_metacarpal) (instance geometry_msgs::Point :init))
    ((:middle_proximal __middle_proximal) (instance geometry_msgs::Point :init))
    ((:middle_intermediate __middle_intermediate) (instance geometry_msgs::Point :init))
    ((:middle_distal __middle_distal) (instance geometry_msgs::Point :init))
    ((:middle_tip __middle_tip) (instance geometry_msgs::Point :init))
    ((:ring_metacarpal __ring_metacarpal) (instance geometry_msgs::Point :init))
    ((:ring_proximal __ring_proximal) (instance geometry_msgs::Point :init))
    ((:ring_intermediate __ring_intermediate) (instance geometry_msgs::Point :init))
    ((:ring_distal __ring_distal) (instance geometry_msgs::Point :init))
    ((:ring_tip __ring_tip) (instance geometry_msgs::Point :init))
    ((:pinky_metacarpal __pinky_metacarpal) (instance geometry_msgs::Point :init))
    ((:pinky_proximal __pinky_proximal) (instance geometry_msgs::Point :init))
    ((:pinky_intermediate __pinky_intermediate) (instance geometry_msgs::Point :init))
    ((:pinky_distal __pinky_distal) (instance geometry_msgs::Point :init))
    ((:pinky_tip __pinky_tip) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _direction __direction)
   (setq _normal __normal)
   (setq _palmpos __palmpos)
   (setq _ypr __ypr)
   (setq _thumb_metacarpal __thumb_metacarpal)
   (setq _thumb_proximal __thumb_proximal)
   (setq _thumb_intermediate __thumb_intermediate)
   (setq _thumb_distal __thumb_distal)
   (setq _thumb_tip __thumb_tip)
   (setq _index_metacarpal __index_metacarpal)
   (setq _index_proximal __index_proximal)
   (setq _index_intermediate __index_intermediate)
   (setq _index_distal __index_distal)
   (setq _index_tip __index_tip)
   (setq _middle_metacarpal __middle_metacarpal)
   (setq _middle_proximal __middle_proximal)
   (setq _middle_intermediate __middle_intermediate)
   (setq _middle_distal __middle_distal)
   (setq _middle_tip __middle_tip)
   (setq _ring_metacarpal __ring_metacarpal)
   (setq _ring_proximal __ring_proximal)
   (setq _ring_intermediate __ring_intermediate)
   (setq _ring_distal __ring_distal)
   (setq _ring_tip __ring_tip)
   (setq _pinky_metacarpal __pinky_metacarpal)
   (setq _pinky_proximal __pinky_proximal)
   (setq _pinky_intermediate __pinky_intermediate)
   (setq _pinky_distal __pinky_distal)
   (setq _pinky_tip __pinky_tip)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:direction
   (&rest __direction)
   (if (keywordp (car __direction))
       (send* _direction __direction)
     (progn
       (if __direction (setq _direction (car __direction)))
       _direction)))
  (:normal
   (&rest __normal)
   (if (keywordp (car __normal))
       (send* _normal __normal)
     (progn
       (if __normal (setq _normal (car __normal)))
       _normal)))
  (:palmpos
   (&rest __palmpos)
   (if (keywordp (car __palmpos))
       (send* _palmpos __palmpos)
     (progn
       (if __palmpos (setq _palmpos (car __palmpos)))
       _palmpos)))
  (:ypr
   (&rest __ypr)
   (if (keywordp (car __ypr))
       (send* _ypr __ypr)
     (progn
       (if __ypr (setq _ypr (car __ypr)))
       _ypr)))
  (:thumb_metacarpal
   (&rest __thumb_metacarpal)
   (if (keywordp (car __thumb_metacarpal))
       (send* _thumb_metacarpal __thumb_metacarpal)
     (progn
       (if __thumb_metacarpal (setq _thumb_metacarpal (car __thumb_metacarpal)))
       _thumb_metacarpal)))
  (:thumb_proximal
   (&rest __thumb_proximal)
   (if (keywordp (car __thumb_proximal))
       (send* _thumb_proximal __thumb_proximal)
     (progn
       (if __thumb_proximal (setq _thumb_proximal (car __thumb_proximal)))
       _thumb_proximal)))
  (:thumb_intermediate
   (&rest __thumb_intermediate)
   (if (keywordp (car __thumb_intermediate))
       (send* _thumb_intermediate __thumb_intermediate)
     (progn
       (if __thumb_intermediate (setq _thumb_intermediate (car __thumb_intermediate)))
       _thumb_intermediate)))
  (:thumb_distal
   (&rest __thumb_distal)
   (if (keywordp (car __thumb_distal))
       (send* _thumb_distal __thumb_distal)
     (progn
       (if __thumb_distal (setq _thumb_distal (car __thumb_distal)))
       _thumb_distal)))
  (:thumb_tip
   (&rest __thumb_tip)
   (if (keywordp (car __thumb_tip))
       (send* _thumb_tip __thumb_tip)
     (progn
       (if __thumb_tip (setq _thumb_tip (car __thumb_tip)))
       _thumb_tip)))
  (:index_metacarpal
   (&rest __index_metacarpal)
   (if (keywordp (car __index_metacarpal))
       (send* _index_metacarpal __index_metacarpal)
     (progn
       (if __index_metacarpal (setq _index_metacarpal (car __index_metacarpal)))
       _index_metacarpal)))
  (:index_proximal
   (&rest __index_proximal)
   (if (keywordp (car __index_proximal))
       (send* _index_proximal __index_proximal)
     (progn
       (if __index_proximal (setq _index_proximal (car __index_proximal)))
       _index_proximal)))
  (:index_intermediate
   (&rest __index_intermediate)
   (if (keywordp (car __index_intermediate))
       (send* _index_intermediate __index_intermediate)
     (progn
       (if __index_intermediate (setq _index_intermediate (car __index_intermediate)))
       _index_intermediate)))
  (:index_distal
   (&rest __index_distal)
   (if (keywordp (car __index_distal))
       (send* _index_distal __index_distal)
     (progn
       (if __index_distal (setq _index_distal (car __index_distal)))
       _index_distal)))
  (:index_tip
   (&rest __index_tip)
   (if (keywordp (car __index_tip))
       (send* _index_tip __index_tip)
     (progn
       (if __index_tip (setq _index_tip (car __index_tip)))
       _index_tip)))
  (:middle_metacarpal
   (&rest __middle_metacarpal)
   (if (keywordp (car __middle_metacarpal))
       (send* _middle_metacarpal __middle_metacarpal)
     (progn
       (if __middle_metacarpal (setq _middle_metacarpal (car __middle_metacarpal)))
       _middle_metacarpal)))
  (:middle_proximal
   (&rest __middle_proximal)
   (if (keywordp (car __middle_proximal))
       (send* _middle_proximal __middle_proximal)
     (progn
       (if __middle_proximal (setq _middle_proximal (car __middle_proximal)))
       _middle_proximal)))
  (:middle_intermediate
   (&rest __middle_intermediate)
   (if (keywordp (car __middle_intermediate))
       (send* _middle_intermediate __middle_intermediate)
     (progn
       (if __middle_intermediate (setq _middle_intermediate (car __middle_intermediate)))
       _middle_intermediate)))
  (:middle_distal
   (&rest __middle_distal)
   (if (keywordp (car __middle_distal))
       (send* _middle_distal __middle_distal)
     (progn
       (if __middle_distal (setq _middle_distal (car __middle_distal)))
       _middle_distal)))
  (:middle_tip
   (&rest __middle_tip)
   (if (keywordp (car __middle_tip))
       (send* _middle_tip __middle_tip)
     (progn
       (if __middle_tip (setq _middle_tip (car __middle_tip)))
       _middle_tip)))
  (:ring_metacarpal
   (&rest __ring_metacarpal)
   (if (keywordp (car __ring_metacarpal))
       (send* _ring_metacarpal __ring_metacarpal)
     (progn
       (if __ring_metacarpal (setq _ring_metacarpal (car __ring_metacarpal)))
       _ring_metacarpal)))
  (:ring_proximal
   (&rest __ring_proximal)
   (if (keywordp (car __ring_proximal))
       (send* _ring_proximal __ring_proximal)
     (progn
       (if __ring_proximal (setq _ring_proximal (car __ring_proximal)))
       _ring_proximal)))
  (:ring_intermediate
   (&rest __ring_intermediate)
   (if (keywordp (car __ring_intermediate))
       (send* _ring_intermediate __ring_intermediate)
     (progn
       (if __ring_intermediate (setq _ring_intermediate (car __ring_intermediate)))
       _ring_intermediate)))
  (:ring_distal
   (&rest __ring_distal)
   (if (keywordp (car __ring_distal))
       (send* _ring_distal __ring_distal)
     (progn
       (if __ring_distal (setq _ring_distal (car __ring_distal)))
       _ring_distal)))
  (:ring_tip
   (&rest __ring_tip)
   (if (keywordp (car __ring_tip))
       (send* _ring_tip __ring_tip)
     (progn
       (if __ring_tip (setq _ring_tip (car __ring_tip)))
       _ring_tip)))
  (:pinky_metacarpal
   (&rest __pinky_metacarpal)
   (if (keywordp (car __pinky_metacarpal))
       (send* _pinky_metacarpal __pinky_metacarpal)
     (progn
       (if __pinky_metacarpal (setq _pinky_metacarpal (car __pinky_metacarpal)))
       _pinky_metacarpal)))
  (:pinky_proximal
   (&rest __pinky_proximal)
   (if (keywordp (car __pinky_proximal))
       (send* _pinky_proximal __pinky_proximal)
     (progn
       (if __pinky_proximal (setq _pinky_proximal (car __pinky_proximal)))
       _pinky_proximal)))
  (:pinky_intermediate
   (&rest __pinky_intermediate)
   (if (keywordp (car __pinky_intermediate))
       (send* _pinky_intermediate __pinky_intermediate)
     (progn
       (if __pinky_intermediate (setq _pinky_intermediate (car __pinky_intermediate)))
       _pinky_intermediate)))
  (:pinky_distal
   (&rest __pinky_distal)
   (if (keywordp (car __pinky_distal))
       (send* _pinky_distal __pinky_distal)
     (progn
       (if __pinky_distal (setq _pinky_distal (car __pinky_distal)))
       _pinky_distal)))
  (:pinky_tip
   (&rest __pinky_tip)
   (if (keywordp (car __pinky_tip))
       (send* _pinky_tip __pinky_tip)
     (progn
       (if __pinky_tip (setq _pinky_tip (car __pinky_tip)))
       _pinky_tip)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Vector3 _direction
    (send _direction :serialization-length)
    ;; geometry_msgs/Vector3 _normal
    (send _normal :serialization-length)
    ;; geometry_msgs/Point _palmpos
    (send _palmpos :serialization-length)
    ;; geometry_msgs/Vector3 _ypr
    (send _ypr :serialization-length)
    ;; geometry_msgs/Point _thumb_metacarpal
    (send _thumb_metacarpal :serialization-length)
    ;; geometry_msgs/Point _thumb_proximal
    (send _thumb_proximal :serialization-length)
    ;; geometry_msgs/Point _thumb_intermediate
    (send _thumb_intermediate :serialization-length)
    ;; geometry_msgs/Point _thumb_distal
    (send _thumb_distal :serialization-length)
    ;; geometry_msgs/Point _thumb_tip
    (send _thumb_tip :serialization-length)
    ;; geometry_msgs/Point _index_metacarpal
    (send _index_metacarpal :serialization-length)
    ;; geometry_msgs/Point _index_proximal
    (send _index_proximal :serialization-length)
    ;; geometry_msgs/Point _index_intermediate
    (send _index_intermediate :serialization-length)
    ;; geometry_msgs/Point _index_distal
    (send _index_distal :serialization-length)
    ;; geometry_msgs/Point _index_tip
    (send _index_tip :serialization-length)
    ;; geometry_msgs/Point _middle_metacarpal
    (send _middle_metacarpal :serialization-length)
    ;; geometry_msgs/Point _middle_proximal
    (send _middle_proximal :serialization-length)
    ;; geometry_msgs/Point _middle_intermediate
    (send _middle_intermediate :serialization-length)
    ;; geometry_msgs/Point _middle_distal
    (send _middle_distal :serialization-length)
    ;; geometry_msgs/Point _middle_tip
    (send _middle_tip :serialization-length)
    ;; geometry_msgs/Point _ring_metacarpal
    (send _ring_metacarpal :serialization-length)
    ;; geometry_msgs/Point _ring_proximal
    (send _ring_proximal :serialization-length)
    ;; geometry_msgs/Point _ring_intermediate
    (send _ring_intermediate :serialization-length)
    ;; geometry_msgs/Point _ring_distal
    (send _ring_distal :serialization-length)
    ;; geometry_msgs/Point _ring_tip
    (send _ring_tip :serialization-length)
    ;; geometry_msgs/Point _pinky_metacarpal
    (send _pinky_metacarpal :serialization-length)
    ;; geometry_msgs/Point _pinky_proximal
    (send _pinky_proximal :serialization-length)
    ;; geometry_msgs/Point _pinky_intermediate
    (send _pinky_intermediate :serialization-length)
    ;; geometry_msgs/Point _pinky_distal
    (send _pinky_distal :serialization-length)
    ;; geometry_msgs/Point _pinky_tip
    (send _pinky_tip :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Vector3 _direction
       (send _direction :serialize s)
     ;; geometry_msgs/Vector3 _normal
       (send _normal :serialize s)
     ;; geometry_msgs/Point _palmpos
       (send _palmpos :serialize s)
     ;; geometry_msgs/Vector3 _ypr
       (send _ypr :serialize s)
     ;; geometry_msgs/Point _thumb_metacarpal
       (send _thumb_metacarpal :serialize s)
     ;; geometry_msgs/Point _thumb_proximal
       (send _thumb_proximal :serialize s)
     ;; geometry_msgs/Point _thumb_intermediate
       (send _thumb_intermediate :serialize s)
     ;; geometry_msgs/Point _thumb_distal
       (send _thumb_distal :serialize s)
     ;; geometry_msgs/Point _thumb_tip
       (send _thumb_tip :serialize s)
     ;; geometry_msgs/Point _index_metacarpal
       (send _index_metacarpal :serialize s)
     ;; geometry_msgs/Point _index_proximal
       (send _index_proximal :serialize s)
     ;; geometry_msgs/Point _index_intermediate
       (send _index_intermediate :serialize s)
     ;; geometry_msgs/Point _index_distal
       (send _index_distal :serialize s)
     ;; geometry_msgs/Point _index_tip
       (send _index_tip :serialize s)
     ;; geometry_msgs/Point _middle_metacarpal
       (send _middle_metacarpal :serialize s)
     ;; geometry_msgs/Point _middle_proximal
       (send _middle_proximal :serialize s)
     ;; geometry_msgs/Point _middle_intermediate
       (send _middle_intermediate :serialize s)
     ;; geometry_msgs/Point _middle_distal
       (send _middle_distal :serialize s)
     ;; geometry_msgs/Point _middle_tip
       (send _middle_tip :serialize s)
     ;; geometry_msgs/Point _ring_metacarpal
       (send _ring_metacarpal :serialize s)
     ;; geometry_msgs/Point _ring_proximal
       (send _ring_proximal :serialize s)
     ;; geometry_msgs/Point _ring_intermediate
       (send _ring_intermediate :serialize s)
     ;; geometry_msgs/Point _ring_distal
       (send _ring_distal :serialize s)
     ;; geometry_msgs/Point _ring_tip
       (send _ring_tip :serialize s)
     ;; geometry_msgs/Point _pinky_metacarpal
       (send _pinky_metacarpal :serialize s)
     ;; geometry_msgs/Point _pinky_proximal
       (send _pinky_proximal :serialize s)
     ;; geometry_msgs/Point _pinky_intermediate
       (send _pinky_intermediate :serialize s)
     ;; geometry_msgs/Point _pinky_distal
       (send _pinky_distal :serialize s)
     ;; geometry_msgs/Point _pinky_tip
       (send _pinky_tip :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Vector3 _direction
     (send _direction :deserialize buf ptr-) (incf ptr- (send _direction :serialization-length))
   ;; geometry_msgs/Vector3 _normal
     (send _normal :deserialize buf ptr-) (incf ptr- (send _normal :serialization-length))
   ;; geometry_msgs/Point _palmpos
     (send _palmpos :deserialize buf ptr-) (incf ptr- (send _palmpos :serialization-length))
   ;; geometry_msgs/Vector3 _ypr
     (send _ypr :deserialize buf ptr-) (incf ptr- (send _ypr :serialization-length))
   ;; geometry_msgs/Point _thumb_metacarpal
     (send _thumb_metacarpal :deserialize buf ptr-) (incf ptr- (send _thumb_metacarpal :serialization-length))
   ;; geometry_msgs/Point _thumb_proximal
     (send _thumb_proximal :deserialize buf ptr-) (incf ptr- (send _thumb_proximal :serialization-length))
   ;; geometry_msgs/Point _thumb_intermediate
     (send _thumb_intermediate :deserialize buf ptr-) (incf ptr- (send _thumb_intermediate :serialization-length))
   ;; geometry_msgs/Point _thumb_distal
     (send _thumb_distal :deserialize buf ptr-) (incf ptr- (send _thumb_distal :serialization-length))
   ;; geometry_msgs/Point _thumb_tip
     (send _thumb_tip :deserialize buf ptr-) (incf ptr- (send _thumb_tip :serialization-length))
   ;; geometry_msgs/Point _index_metacarpal
     (send _index_metacarpal :deserialize buf ptr-) (incf ptr- (send _index_metacarpal :serialization-length))
   ;; geometry_msgs/Point _index_proximal
     (send _index_proximal :deserialize buf ptr-) (incf ptr- (send _index_proximal :serialization-length))
   ;; geometry_msgs/Point _index_intermediate
     (send _index_intermediate :deserialize buf ptr-) (incf ptr- (send _index_intermediate :serialization-length))
   ;; geometry_msgs/Point _index_distal
     (send _index_distal :deserialize buf ptr-) (incf ptr- (send _index_distal :serialization-length))
   ;; geometry_msgs/Point _index_tip
     (send _index_tip :deserialize buf ptr-) (incf ptr- (send _index_tip :serialization-length))
   ;; geometry_msgs/Point _middle_metacarpal
     (send _middle_metacarpal :deserialize buf ptr-) (incf ptr- (send _middle_metacarpal :serialization-length))
   ;; geometry_msgs/Point _middle_proximal
     (send _middle_proximal :deserialize buf ptr-) (incf ptr- (send _middle_proximal :serialization-length))
   ;; geometry_msgs/Point _middle_intermediate
     (send _middle_intermediate :deserialize buf ptr-) (incf ptr- (send _middle_intermediate :serialization-length))
   ;; geometry_msgs/Point _middle_distal
     (send _middle_distal :deserialize buf ptr-) (incf ptr- (send _middle_distal :serialization-length))
   ;; geometry_msgs/Point _middle_tip
     (send _middle_tip :deserialize buf ptr-) (incf ptr- (send _middle_tip :serialization-length))
   ;; geometry_msgs/Point _ring_metacarpal
     (send _ring_metacarpal :deserialize buf ptr-) (incf ptr- (send _ring_metacarpal :serialization-length))
   ;; geometry_msgs/Point _ring_proximal
     (send _ring_proximal :deserialize buf ptr-) (incf ptr- (send _ring_proximal :serialization-length))
   ;; geometry_msgs/Point _ring_intermediate
     (send _ring_intermediate :deserialize buf ptr-) (incf ptr- (send _ring_intermediate :serialization-length))
   ;; geometry_msgs/Point _ring_distal
     (send _ring_distal :deserialize buf ptr-) (incf ptr- (send _ring_distal :serialization-length))
   ;; geometry_msgs/Point _ring_tip
     (send _ring_tip :deserialize buf ptr-) (incf ptr- (send _ring_tip :serialization-length))
   ;; geometry_msgs/Point _pinky_metacarpal
     (send _pinky_metacarpal :deserialize buf ptr-) (incf ptr- (send _pinky_metacarpal :serialization-length))
   ;; geometry_msgs/Point _pinky_proximal
     (send _pinky_proximal :deserialize buf ptr-) (incf ptr- (send _pinky_proximal :serialization-length))
   ;; geometry_msgs/Point _pinky_intermediate
     (send _pinky_intermediate :deserialize buf ptr-) (incf ptr- (send _pinky_intermediate :serialization-length))
   ;; geometry_msgs/Point _pinky_distal
     (send _pinky_distal :deserialize buf ptr-) (incf ptr- (send _pinky_distal :serialization-length))
   ;; geometry_msgs/Point _pinky_tip
     (send _pinky_tip :deserialize buf ptr-) (incf ptr- (send _pinky_tip :serialization-length))
   ;;
   self)
  )

(setf (get leap_motion::leapros :md5sum-) "e37447f7532c765d6c587f418fd5dd03")
(setf (get leap_motion::leapros :datatype-) "leap_motion/leapros")
(setf (get leap_motion::leapros :definition-)
      "##################################################
## Deprecated and will be removed in the future ##
##################################################

Header header
geometry_msgs/Vector3 direction
geometry_msgs/Vector3 normal
geometry_msgs/Point palmpos
geometry_msgs/Vector3 ypr
geometry_msgs/Point thumb_metacarpal
geometry_msgs/Point thumb_proximal
geometry_msgs/Point thumb_intermediate
geometry_msgs/Point thumb_distal
geometry_msgs/Point thumb_tip
geometry_msgs/Point index_metacarpal
geometry_msgs/Point index_proximal
geometry_msgs/Point index_intermediate
geometry_msgs/Point index_distal
geometry_msgs/Point index_tip
geometry_msgs/Point middle_metacarpal
geometry_msgs/Point middle_proximal
geometry_msgs/Point middle_intermediate
geometry_msgs/Point middle_distal
geometry_msgs/Point middle_tip
geometry_msgs/Point ring_metacarpal
geometry_msgs/Point ring_proximal
geometry_msgs/Point ring_intermediate
geometry_msgs/Point ring_distal
geometry_msgs/Point ring_tip
geometry_msgs/Point pinky_metacarpal
geometry_msgs/Point pinky_proximal
geometry_msgs/Point pinky_intermediate
geometry_msgs/Point pinky_distal
geometry_msgs/Point pinky_tip


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
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :leap_motion/leapros "e37447f7532c765d6c587f418fd5dd03")


