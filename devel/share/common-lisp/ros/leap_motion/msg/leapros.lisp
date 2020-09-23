; Auto-generated. Do not edit!


(cl:in-package leap_motion-msg)


;//! \htmlinclude leapros.msg.html

(cl:defclass <leapros> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (direction
    :reader direction
    :initarg :direction
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (normal
    :reader normal
    :initarg :normal
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (palmpos
    :reader palmpos
    :initarg :palmpos
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (ypr
    :reader ypr
    :initarg :ypr
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (thumb_metacarpal
    :reader thumb_metacarpal
    :initarg :thumb_metacarpal
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (thumb_proximal
    :reader thumb_proximal
    :initarg :thumb_proximal
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (thumb_intermediate
    :reader thumb_intermediate
    :initarg :thumb_intermediate
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (thumb_distal
    :reader thumb_distal
    :initarg :thumb_distal
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (thumb_tip
    :reader thumb_tip
    :initarg :thumb_tip
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (index_metacarpal
    :reader index_metacarpal
    :initarg :index_metacarpal
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (index_proximal
    :reader index_proximal
    :initarg :index_proximal
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (index_intermediate
    :reader index_intermediate
    :initarg :index_intermediate
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (index_distal
    :reader index_distal
    :initarg :index_distal
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (index_tip
    :reader index_tip
    :initarg :index_tip
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (middle_metacarpal
    :reader middle_metacarpal
    :initarg :middle_metacarpal
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (middle_proximal
    :reader middle_proximal
    :initarg :middle_proximal
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (middle_intermediate
    :reader middle_intermediate
    :initarg :middle_intermediate
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (middle_distal
    :reader middle_distal
    :initarg :middle_distal
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (middle_tip
    :reader middle_tip
    :initarg :middle_tip
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (ring_metacarpal
    :reader ring_metacarpal
    :initarg :ring_metacarpal
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (ring_proximal
    :reader ring_proximal
    :initarg :ring_proximal
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (ring_intermediate
    :reader ring_intermediate
    :initarg :ring_intermediate
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (ring_distal
    :reader ring_distal
    :initarg :ring_distal
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (ring_tip
    :reader ring_tip
    :initarg :ring_tip
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (pinky_metacarpal
    :reader pinky_metacarpal
    :initarg :pinky_metacarpal
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (pinky_proximal
    :reader pinky_proximal
    :initarg :pinky_proximal
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (pinky_intermediate
    :reader pinky_intermediate
    :initarg :pinky_intermediate
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (pinky_distal
    :reader pinky_distal
    :initarg :pinky_distal
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (pinky_tip
    :reader pinky_tip
    :initarg :pinky_tip
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass leapros (<leapros>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <leapros>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'leapros)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name leap_motion-msg:<leapros> is deprecated: use leap_motion-msg:leapros instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <leapros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:header-val is deprecated.  Use leap_motion-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <leapros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:direction-val is deprecated.  Use leap_motion-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'normal-val :lambda-list '(m))
(cl:defmethod normal-val ((m <leapros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:normal-val is deprecated.  Use leap_motion-msg:normal instead.")
  (normal m))

(cl:ensure-generic-function 'palmpos-val :lambda-list '(m))
(cl:defmethod palmpos-val ((m <leapros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:palmpos-val is deprecated.  Use leap_motion-msg:palmpos instead.")
  (palmpos m))

(cl:ensure-generic-function 'ypr-val :lambda-list '(m))
(cl:defmethod ypr-val ((m <leapros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:ypr-val is deprecated.  Use leap_motion-msg:ypr instead.")
  (ypr m))

(cl:ensure-generic-function 'thumb_metacarpal-val :lambda-list '(m))
(cl:defmethod thumb_metacarpal-val ((m <leapros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:thumb_metacarpal-val is deprecated.  Use leap_motion-msg:thumb_metacarpal instead.")
  (thumb_metacarpal m))

(cl:ensure-generic-function 'thumb_proximal-val :lambda-list '(m))
(cl:defmethod thumb_proximal-val ((m <leapros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:thumb_proximal-val is deprecated.  Use leap_motion-msg:thumb_proximal instead.")
  (thumb_proximal m))

(cl:ensure-generic-function 'thumb_intermediate-val :lambda-list '(m))
(cl:defmethod thumb_intermediate-val ((m <leapros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:thumb_intermediate-val is deprecated.  Use leap_motion-msg:thumb_intermediate instead.")
  (thumb_intermediate m))

(cl:ensure-generic-function 'thumb_distal-val :lambda-list '(m))
(cl:defmethod thumb_distal-val ((m <leapros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:thumb_distal-val is deprecated.  Use leap_motion-msg:thumb_distal instead.")
  (thumb_distal m))

(cl:ensure-generic-function 'thumb_tip-val :lambda-list '(m))
(cl:defmethod thumb_tip-val ((m <leapros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:thumb_tip-val is deprecated.  Use leap_motion-msg:thumb_tip instead.")
  (thumb_tip m))

(cl:ensure-generic-function 'index_metacarpal-val :lambda-list '(m))
(cl:defmethod index_metacarpal-val ((m <leapros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:index_metacarpal-val is deprecated.  Use leap_motion-msg:index_metacarpal instead.")
  (index_metacarpal m))

(cl:ensure-generic-function 'index_proximal-val :lambda-list '(m))
(cl:defmethod index_proximal-val ((m <leapros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:index_proximal-val is deprecated.  Use leap_motion-msg:index_proximal instead.")
  (index_proximal m))

(cl:ensure-generic-function 'index_intermediate-val :lambda-list '(m))
(cl:defmethod index_intermediate-val ((m <leapros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:index_intermediate-val is deprecated.  Use leap_motion-msg:index_intermediate instead.")
  (index_intermediate m))

(cl:ensure-generic-function 'index_distal-val :lambda-list '(m))
(cl:defmethod index_distal-val ((m <leapros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:index_distal-val is deprecated.  Use leap_motion-msg:index_distal instead.")
  (index_distal m))

(cl:ensure-generic-function 'index_tip-val :lambda-list '(m))
(cl:defmethod index_tip-val ((m <leapros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:index_tip-val is deprecated.  Use leap_motion-msg:index_tip instead.")
  (index_tip m))

(cl:ensure-generic-function 'middle_metacarpal-val :lambda-list '(m))
(cl:defmethod middle_metacarpal-val ((m <leapros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:middle_metacarpal-val is deprecated.  Use leap_motion-msg:middle_metacarpal instead.")
  (middle_metacarpal m))

(cl:ensure-generic-function 'middle_proximal-val :lambda-list '(m))
(cl:defmethod middle_proximal-val ((m <leapros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:middle_proximal-val is deprecated.  Use leap_motion-msg:middle_proximal instead.")
  (middle_proximal m))

(cl:ensure-generic-function 'middle_intermediate-val :lambda-list '(m))
(cl:defmethod middle_intermediate-val ((m <leapros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:middle_intermediate-val is deprecated.  Use leap_motion-msg:middle_intermediate instead.")
  (middle_intermediate m))

(cl:ensure-generic-function 'middle_distal-val :lambda-list '(m))
(cl:defmethod middle_distal-val ((m <leapros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:middle_distal-val is deprecated.  Use leap_motion-msg:middle_distal instead.")
  (middle_distal m))

(cl:ensure-generic-function 'middle_tip-val :lambda-list '(m))
(cl:defmethod middle_tip-val ((m <leapros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:middle_tip-val is deprecated.  Use leap_motion-msg:middle_tip instead.")
  (middle_tip m))

(cl:ensure-generic-function 'ring_metacarpal-val :lambda-list '(m))
(cl:defmethod ring_metacarpal-val ((m <leapros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:ring_metacarpal-val is deprecated.  Use leap_motion-msg:ring_metacarpal instead.")
  (ring_metacarpal m))

(cl:ensure-generic-function 'ring_proximal-val :lambda-list '(m))
(cl:defmethod ring_proximal-val ((m <leapros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:ring_proximal-val is deprecated.  Use leap_motion-msg:ring_proximal instead.")
  (ring_proximal m))

(cl:ensure-generic-function 'ring_intermediate-val :lambda-list '(m))
(cl:defmethod ring_intermediate-val ((m <leapros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:ring_intermediate-val is deprecated.  Use leap_motion-msg:ring_intermediate instead.")
  (ring_intermediate m))

(cl:ensure-generic-function 'ring_distal-val :lambda-list '(m))
(cl:defmethod ring_distal-val ((m <leapros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:ring_distal-val is deprecated.  Use leap_motion-msg:ring_distal instead.")
  (ring_distal m))

(cl:ensure-generic-function 'ring_tip-val :lambda-list '(m))
(cl:defmethod ring_tip-val ((m <leapros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:ring_tip-val is deprecated.  Use leap_motion-msg:ring_tip instead.")
  (ring_tip m))

(cl:ensure-generic-function 'pinky_metacarpal-val :lambda-list '(m))
(cl:defmethod pinky_metacarpal-val ((m <leapros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:pinky_metacarpal-val is deprecated.  Use leap_motion-msg:pinky_metacarpal instead.")
  (pinky_metacarpal m))

(cl:ensure-generic-function 'pinky_proximal-val :lambda-list '(m))
(cl:defmethod pinky_proximal-val ((m <leapros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:pinky_proximal-val is deprecated.  Use leap_motion-msg:pinky_proximal instead.")
  (pinky_proximal m))

(cl:ensure-generic-function 'pinky_intermediate-val :lambda-list '(m))
(cl:defmethod pinky_intermediate-val ((m <leapros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:pinky_intermediate-val is deprecated.  Use leap_motion-msg:pinky_intermediate instead.")
  (pinky_intermediate m))

(cl:ensure-generic-function 'pinky_distal-val :lambda-list '(m))
(cl:defmethod pinky_distal-val ((m <leapros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:pinky_distal-val is deprecated.  Use leap_motion-msg:pinky_distal instead.")
  (pinky_distal m))

(cl:ensure-generic-function 'pinky_tip-val :lambda-list '(m))
(cl:defmethod pinky_tip-val ((m <leapros>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:pinky_tip-val is deprecated.  Use leap_motion-msg:pinky_tip instead.")
  (pinky_tip m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <leapros>) ostream)
  "Serializes a message object of type '<leapros>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'direction) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'normal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'palmpos) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ypr) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'thumb_metacarpal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'thumb_proximal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'thumb_intermediate) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'thumb_distal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'thumb_tip) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'index_metacarpal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'index_proximal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'index_intermediate) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'index_distal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'index_tip) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'middle_metacarpal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'middle_proximal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'middle_intermediate) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'middle_distal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'middle_tip) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ring_metacarpal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ring_proximal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ring_intermediate) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ring_distal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ring_tip) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pinky_metacarpal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pinky_proximal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pinky_intermediate) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pinky_distal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pinky_tip) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <leapros>) istream)
  "Deserializes a message object of type '<leapros>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'direction) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'normal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'palmpos) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ypr) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'thumb_metacarpal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'thumb_proximal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'thumb_intermediate) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'thumb_distal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'thumb_tip) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'index_metacarpal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'index_proximal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'index_intermediate) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'index_distal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'index_tip) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'middle_metacarpal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'middle_proximal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'middle_intermediate) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'middle_distal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'middle_tip) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ring_metacarpal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ring_proximal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ring_intermediate) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ring_distal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ring_tip) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pinky_metacarpal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pinky_proximal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pinky_intermediate) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pinky_distal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pinky_tip) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<leapros>)))
  "Returns string type for a message object of type '<leapros>"
  "leap_motion/leapros")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'leapros)))
  "Returns string type for a message object of type 'leapros"
  "leap_motion/leapros")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<leapros>)))
  "Returns md5sum for a message object of type '<leapros>"
  "e37447f7532c765d6c587f418fd5dd03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'leapros)))
  "Returns md5sum for a message object of type 'leapros"
  "e37447f7532c765d6c587f418fd5dd03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<leapros>)))
  "Returns full string definition for message of type '<leapros>"
  (cl:format cl:nil "##################################################~%## Deprecated and will be removed in the future ##~%##################################################~%~%Header header~%geometry_msgs/Vector3 direction~%geometry_msgs/Vector3 normal~%geometry_msgs/Point palmpos~%geometry_msgs/Vector3 ypr~%geometry_msgs/Point thumb_metacarpal~%geometry_msgs/Point thumb_proximal~%geometry_msgs/Point thumb_intermediate~%geometry_msgs/Point thumb_distal~%geometry_msgs/Point thumb_tip~%geometry_msgs/Point index_metacarpal~%geometry_msgs/Point index_proximal~%geometry_msgs/Point index_intermediate~%geometry_msgs/Point index_distal~%geometry_msgs/Point index_tip~%geometry_msgs/Point middle_metacarpal~%geometry_msgs/Point middle_proximal~%geometry_msgs/Point middle_intermediate~%geometry_msgs/Point middle_distal~%geometry_msgs/Point middle_tip~%geometry_msgs/Point ring_metacarpal~%geometry_msgs/Point ring_proximal~%geometry_msgs/Point ring_intermediate~%geometry_msgs/Point ring_distal~%geometry_msgs/Point ring_tip~%geometry_msgs/Point pinky_metacarpal~%geometry_msgs/Point pinky_proximal~%geometry_msgs/Point pinky_intermediate~%geometry_msgs/Point pinky_distal~%geometry_msgs/Point pinky_tip~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'leapros)))
  "Returns full string definition for message of type 'leapros"
  (cl:format cl:nil "##################################################~%## Deprecated and will be removed in the future ##~%##################################################~%~%Header header~%geometry_msgs/Vector3 direction~%geometry_msgs/Vector3 normal~%geometry_msgs/Point palmpos~%geometry_msgs/Vector3 ypr~%geometry_msgs/Point thumb_metacarpal~%geometry_msgs/Point thumb_proximal~%geometry_msgs/Point thumb_intermediate~%geometry_msgs/Point thumb_distal~%geometry_msgs/Point thumb_tip~%geometry_msgs/Point index_metacarpal~%geometry_msgs/Point index_proximal~%geometry_msgs/Point index_intermediate~%geometry_msgs/Point index_distal~%geometry_msgs/Point index_tip~%geometry_msgs/Point middle_metacarpal~%geometry_msgs/Point middle_proximal~%geometry_msgs/Point middle_intermediate~%geometry_msgs/Point middle_distal~%geometry_msgs/Point middle_tip~%geometry_msgs/Point ring_metacarpal~%geometry_msgs/Point ring_proximal~%geometry_msgs/Point ring_intermediate~%geometry_msgs/Point ring_distal~%geometry_msgs/Point ring_tip~%geometry_msgs/Point pinky_metacarpal~%geometry_msgs/Point pinky_proximal~%geometry_msgs/Point pinky_intermediate~%geometry_msgs/Point pinky_distal~%geometry_msgs/Point pinky_tip~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <leapros>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'direction))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'normal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'palmpos))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ypr))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'thumb_metacarpal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'thumb_proximal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'thumb_intermediate))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'thumb_distal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'thumb_tip))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'index_metacarpal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'index_proximal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'index_intermediate))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'index_distal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'index_tip))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'middle_metacarpal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'middle_proximal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'middle_intermediate))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'middle_distal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'middle_tip))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ring_metacarpal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ring_proximal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ring_intermediate))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ring_distal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ring_tip))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pinky_metacarpal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pinky_proximal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pinky_intermediate))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pinky_distal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pinky_tip))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <leapros>))
  "Converts a ROS message object to a list"
  (cl:list 'leapros
    (cl:cons ':header (header msg))
    (cl:cons ':direction (direction msg))
    (cl:cons ':normal (normal msg))
    (cl:cons ':palmpos (palmpos msg))
    (cl:cons ':ypr (ypr msg))
    (cl:cons ':thumb_metacarpal (thumb_metacarpal msg))
    (cl:cons ':thumb_proximal (thumb_proximal msg))
    (cl:cons ':thumb_intermediate (thumb_intermediate msg))
    (cl:cons ':thumb_distal (thumb_distal msg))
    (cl:cons ':thumb_tip (thumb_tip msg))
    (cl:cons ':index_metacarpal (index_metacarpal msg))
    (cl:cons ':index_proximal (index_proximal msg))
    (cl:cons ':index_intermediate (index_intermediate msg))
    (cl:cons ':index_distal (index_distal msg))
    (cl:cons ':index_tip (index_tip msg))
    (cl:cons ':middle_metacarpal (middle_metacarpal msg))
    (cl:cons ':middle_proximal (middle_proximal msg))
    (cl:cons ':middle_intermediate (middle_intermediate msg))
    (cl:cons ':middle_distal (middle_distal msg))
    (cl:cons ':middle_tip (middle_tip msg))
    (cl:cons ':ring_metacarpal (ring_metacarpal msg))
    (cl:cons ':ring_proximal (ring_proximal msg))
    (cl:cons ':ring_intermediate (ring_intermediate msg))
    (cl:cons ':ring_distal (ring_distal msg))
    (cl:cons ':ring_tip (ring_tip msg))
    (cl:cons ':pinky_metacarpal (pinky_metacarpal msg))
    (cl:cons ':pinky_proximal (pinky_proximal msg))
    (cl:cons ':pinky_intermediate (pinky_intermediate msg))
    (cl:cons ':pinky_distal (pinky_distal msg))
    (cl:cons ':pinky_tip (pinky_tip msg))
))
