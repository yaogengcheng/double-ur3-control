; Auto-generated. Do not edit!


(cl:in-package leap_motion-msg)


;//! \htmlinclude Finger.msg.html

(cl:defclass <Finger> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (lmc_finger_id
    :reader lmc_finger_id
    :initarg :lmc_finger_id
    :type cl:integer
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0)
   (width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0)
   (to_string
    :reader to_string
    :initarg :to_string
    :type cl:string
    :initform "")
   (bone_list
    :reader bone_list
    :initarg :bone_list
    :type (cl:vector leap_motion-msg:Bone)
   :initform (cl:make-array 0 :element-type 'leap_motion-msg:Bone :initial-element (cl:make-instance 'leap_motion-msg:Bone))))
)

(cl:defclass Finger (<Finger>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Finger>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Finger)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name leap_motion-msg:<Finger> is deprecated: use leap_motion-msg:Finger instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Finger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:header-val is deprecated.  Use leap_motion-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'lmc_finger_id-val :lambda-list '(m))
(cl:defmethod lmc_finger_id-val ((m <Finger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:lmc_finger_id-val is deprecated.  Use leap_motion-msg:lmc_finger_id instead.")
  (lmc_finger_id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Finger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:type-val is deprecated.  Use leap_motion-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <Finger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:length-val is deprecated.  Use leap_motion-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <Finger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:width-val is deprecated.  Use leap_motion-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'to_string-val :lambda-list '(m))
(cl:defmethod to_string-val ((m <Finger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:to_string-val is deprecated.  Use leap_motion-msg:to_string instead.")
  (to_string m))

(cl:ensure-generic-function 'bone_list-val :lambda-list '(m))
(cl:defmethod bone_list-val ((m <Finger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:bone_list-val is deprecated.  Use leap_motion-msg:bone_list instead.")
  (bone_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Finger>) ostream)
  "Serializes a message object of type '<Finger>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'lmc_finger_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'to_string))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'to_string))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bone_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'bone_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Finger>) istream)
  "Deserializes a message object of type '<Finger>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lmc_finger_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'to_string) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'to_string) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bone_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bone_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'leap_motion-msg:Bone))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Finger>)))
  "Returns string type for a message object of type '<Finger>"
  "leap_motion/Finger")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Finger)))
  "Returns string type for a message object of type 'Finger"
  "leap_motion/Finger")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Finger>)))
  "Returns md5sum for a message object of type '<Finger>"
  "c62c3b47717473d8242b45f476fc55c7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Finger)))
  "Returns md5sum for a message object of type 'Finger"
  "c62c3b47717473d8242b45f476fc55c7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Finger>)))
  "Returns full string definition for message of type '<Finger>"
  (cl:format cl:nil "std_msgs/Header header~%~%# A unique id given to this finger~%int32 lmc_finger_id~%~%# The name of this finger. ~%uint8 type~%~%# The estimated length of the finger in meters. ~%float32 length~%~%# The estimated width of the finger in meters.~%float32 width~%~%# A string containing a brief, human readable description of the Finger object. ~%string to_string~%~%# List of bones associated with this finger~%Bone[] bone_list~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: leap_motion/Bone~%std_msgs/Header header~%~%# The name of this bone. ~%uint8 type~%~%# The estimated length of the bone in meters.~%float32 length~%~%# The estimated with of the bone in meters.~%float32 width~%~%# A string containing a brief, human readable description of the Bone object. ~%string to_string~%~%# The base of the bone, closest to the wrist. ~%geometry_msgs/Pose bone_start~%~%# The end of the bone, closest to the finger tip. ~%geometry_msgs/Pose bone_end~%~%# The midpoint of the bone. ~%float32[] center~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Finger)))
  "Returns full string definition for message of type 'Finger"
  (cl:format cl:nil "std_msgs/Header header~%~%# A unique id given to this finger~%int32 lmc_finger_id~%~%# The name of this finger. ~%uint8 type~%~%# The estimated length of the finger in meters. ~%float32 length~%~%# The estimated width of the finger in meters.~%float32 width~%~%# A string containing a brief, human readable description of the Finger object. ~%string to_string~%~%# List of bones associated with this finger~%Bone[] bone_list~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: leap_motion/Bone~%std_msgs/Header header~%~%# The name of this bone. ~%uint8 type~%~%# The estimated length of the bone in meters.~%float32 length~%~%# The estimated with of the bone in meters.~%float32 width~%~%# A string containing a brief, human readable description of the Bone object. ~%string to_string~%~%# The base of the bone, closest to the wrist. ~%geometry_msgs/Pose bone_start~%~%# The end of the bone, closest to the finger tip. ~%geometry_msgs/Pose bone_end~%~%# The midpoint of the bone. ~%float32[] center~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Finger>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     1
     4
     4
     4 (cl:length (cl:slot-value msg 'to_string))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bone_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Finger>))
  "Converts a ROS message object to a list"
  (cl:list 'Finger
    (cl:cons ':header (header msg))
    (cl:cons ':lmc_finger_id (lmc_finger_id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':length (length msg))
    (cl:cons ':width (width msg))
    (cl:cons ':to_string (to_string msg))
    (cl:cons ':bone_list (bone_list msg))
))
