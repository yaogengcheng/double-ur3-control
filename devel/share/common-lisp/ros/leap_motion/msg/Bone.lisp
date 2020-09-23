; Auto-generated. Do not edit!


(cl:in-package leap_motion-msg)


;//! \htmlinclude Bone.msg.html

(cl:defclass <Bone> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
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
   (bone_start
    :reader bone_start
    :initarg :bone_start
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (bone_end
    :reader bone_end
    :initarg :bone_end
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (center
    :reader center
    :initarg :center
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Bone (<Bone>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Bone>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Bone)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name leap_motion-msg:<Bone> is deprecated: use leap_motion-msg:Bone instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Bone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:header-val is deprecated.  Use leap_motion-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Bone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:type-val is deprecated.  Use leap_motion-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <Bone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:length-val is deprecated.  Use leap_motion-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <Bone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:width-val is deprecated.  Use leap_motion-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'to_string-val :lambda-list '(m))
(cl:defmethod to_string-val ((m <Bone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:to_string-val is deprecated.  Use leap_motion-msg:to_string instead.")
  (to_string m))

(cl:ensure-generic-function 'bone_start-val :lambda-list '(m))
(cl:defmethod bone_start-val ((m <Bone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:bone_start-val is deprecated.  Use leap_motion-msg:bone_start instead.")
  (bone_start m))

(cl:ensure-generic-function 'bone_end-val :lambda-list '(m))
(cl:defmethod bone_end-val ((m <Bone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:bone_end-val is deprecated.  Use leap_motion-msg:bone_end instead.")
  (bone_end m))

(cl:ensure-generic-function 'center-val :lambda-list '(m))
(cl:defmethod center-val ((m <Bone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:center-val is deprecated.  Use leap_motion-msg:center instead.")
  (center m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Bone>) ostream)
  "Serializes a message object of type '<Bone>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bone_start) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bone_end) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'center))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'center))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Bone>) istream)
  "Deserializes a message object of type '<Bone>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bone_start) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bone_end) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'center) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'center)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Bone>)))
  "Returns string type for a message object of type '<Bone>"
  "leap_motion/Bone")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Bone)))
  "Returns string type for a message object of type 'Bone"
  "leap_motion/Bone")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Bone>)))
  "Returns md5sum for a message object of type '<Bone>"
  "ce39afad61bdb16ab802b0100be50795")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Bone)))
  "Returns md5sum for a message object of type 'Bone"
  "ce39afad61bdb16ab802b0100be50795")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Bone>)))
  "Returns full string definition for message of type '<Bone>"
  (cl:format cl:nil "std_msgs/Header header~%~%# The name of this bone. ~%uint8 type~%~%# The estimated length of the bone in meters.~%float32 length~%~%# The estimated with of the bone in meters.~%float32 width~%~%# A string containing a brief, human readable description of the Bone object. ~%string to_string~%~%# The base of the bone, closest to the wrist. ~%geometry_msgs/Pose bone_start~%~%# The end of the bone, closest to the finger tip. ~%geometry_msgs/Pose bone_end~%~%# The midpoint of the bone. ~%float32[] center~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Bone)))
  "Returns full string definition for message of type 'Bone"
  (cl:format cl:nil "std_msgs/Header header~%~%# The name of this bone. ~%uint8 type~%~%# The estimated length of the bone in meters.~%float32 length~%~%# The estimated with of the bone in meters.~%float32 width~%~%# A string containing a brief, human readable description of the Bone object. ~%string to_string~%~%# The base of the bone, closest to the wrist. ~%geometry_msgs/Pose bone_start~%~%# The end of the bone, closest to the finger tip. ~%geometry_msgs/Pose bone_end~%~%# The midpoint of the bone. ~%float32[] center~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Bone>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     4
     4 (cl:length (cl:slot-value msg 'to_string))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bone_start))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bone_end))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'center) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Bone>))
  "Converts a ROS message object to a list"
  (cl:list 'Bone
    (cl:cons ':header (header msg))
    (cl:cons ':type (type msg))
    (cl:cons ':length (length msg))
    (cl:cons ':width (width msg))
    (cl:cons ':to_string (to_string msg))
    (cl:cons ':bone_start (bone_start msg))
    (cl:cons ':bone_end (bone_end msg))
    (cl:cons ':center (center msg))
))
