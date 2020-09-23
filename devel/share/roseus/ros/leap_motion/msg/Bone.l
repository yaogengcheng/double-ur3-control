;; Auto-generated. Do not edit!


(when (boundp 'leap_motion::Bone)
  (if (not (find-package "LEAP_MOTION"))
    (make-package "LEAP_MOTION"))
  (shadow 'Bone (find-package "LEAP_MOTION")))
(unless (find-package "LEAP_MOTION::BONE")
  (make-package "LEAP_MOTION::BONE"))

(in-package "ROS")
;;//! \htmlinclude Bone.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass leap_motion::Bone
  :super ros::object
  :slots (_header _type _length _width _to_string _bone_start _bone_end _center ))

(defmethod leap_motion::Bone
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) 0)
    ((:length __length) 0.0)
    ((:width __width) 0.0)
    ((:to_string __to_string) "")
    ((:bone_start __bone_start) (instance geometry_msgs::Pose :init))
    ((:bone_end __bone_end) (instance geometry_msgs::Pose :init))
    ((:center __center) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (round __type))
   (setq _length (float __length))
   (setq _width (float __width))
   (setq _to_string (string __to_string))
   (setq _bone_start __bone_start)
   (setq _bone_end __bone_end)
   (setq _center __center)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
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
  (:bone_start
   (&rest __bone_start)
   (if (keywordp (car __bone_start))
       (send* _bone_start __bone_start)
     (progn
       (if __bone_start (setq _bone_start (car __bone_start)))
       _bone_start)))
  (:bone_end
   (&rest __bone_end)
   (if (keywordp (car __bone_end))
       (send* _bone_end __bone_end)
     (progn
       (if __bone_end (setq _bone_end (car __bone_end)))
       _bone_end)))
  (:center
   (&optional __center)
   (if __center (setq _center __center)) _center)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _type
    1
    ;; float32 _length
    4
    ;; float32 _width
    4
    ;; string _to_string
    4 (length _to_string)
    ;; geometry_msgs/Pose _bone_start
    (send _bone_start :serialization-length)
    ;; geometry_msgs/Pose _bone_end
    (send _bone_end :serialization-length)
    ;; float32[] _center
    (* 4    (length _center)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _type
       (write-byte _type s)
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _to_string
       (write-long (length _to_string) s) (princ _to_string s)
     ;; geometry_msgs/Pose _bone_start
       (send _bone_start :serialize s)
     ;; geometry_msgs/Pose _bone_end
       (send _bone_end :serialize s)
     ;; float32[] _center
     (write-long (length _center) s)
     (dotimes (i (length _center))
       (sys::poke (elt _center i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _to_string
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _to_string (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _bone_start
     (send _bone_start :deserialize buf ptr-) (incf ptr- (send _bone_start :serialization-length))
   ;; geometry_msgs/Pose _bone_end
     (send _bone_end :deserialize buf ptr-) (incf ptr- (send _bone_end :serialization-length))
   ;; float32[] _center
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _center (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _center i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get leap_motion::Bone :md5sum-) "ce39afad61bdb16ab802b0100be50795")
(setf (get leap_motion::Bone :datatype-) "leap_motion/Bone")
(setf (get leap_motion::Bone :definition-)
      "std_msgs/Header header

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

")



(provide :leap_motion/Bone "ce39afad61bdb16ab802b0100be50795")


