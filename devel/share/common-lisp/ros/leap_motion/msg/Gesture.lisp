; Auto-generated. Do not edit!


(cl:in-package leap_motion-msg)


;//! \htmlinclude Gesture.msg.html

(cl:defclass <Gesture> (roslisp-msg-protocol:ros-message)
  ((lmc_gesture_id
    :reader lmc_gesture_id
    :initarg :lmc_gesture_id
    :type cl:integer
    :initform 0)
   (is_valid
    :reader is_valid
    :initarg :is_valid
    :type cl:boolean
    :initform cl:nil)
   (duration_us
    :reader duration_us
    :initarg :duration_us
    :type cl:integer
    :initform 0)
   (duration_s
    :reader duration_s
    :initarg :duration_s
    :type cl:float
    :initform 0.0)
   (gesture_state
    :reader gesture_state
    :initarg :gesture_state
    :type cl:integer
    :initform 0)
   (gesture_type
    :reader gesture_type
    :initarg :gesture_type
    :type cl:integer
    :initform 0)
   (to_string
    :reader to_string
    :initarg :to_string
    :type cl:string
    :initform "")
   (pointable_ids
    :reader pointable_ids
    :initarg :pointable_ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass Gesture (<Gesture>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Gesture>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Gesture)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name leap_motion-msg:<Gesture> is deprecated: use leap_motion-msg:Gesture instead.")))

(cl:ensure-generic-function 'lmc_gesture_id-val :lambda-list '(m))
(cl:defmethod lmc_gesture_id-val ((m <Gesture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:lmc_gesture_id-val is deprecated.  Use leap_motion-msg:lmc_gesture_id instead.")
  (lmc_gesture_id m))

(cl:ensure-generic-function 'is_valid-val :lambda-list '(m))
(cl:defmethod is_valid-val ((m <Gesture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:is_valid-val is deprecated.  Use leap_motion-msg:is_valid instead.")
  (is_valid m))

(cl:ensure-generic-function 'duration_us-val :lambda-list '(m))
(cl:defmethod duration_us-val ((m <Gesture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:duration_us-val is deprecated.  Use leap_motion-msg:duration_us instead.")
  (duration_us m))

(cl:ensure-generic-function 'duration_s-val :lambda-list '(m))
(cl:defmethod duration_s-val ((m <Gesture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:duration_s-val is deprecated.  Use leap_motion-msg:duration_s instead.")
  (duration_s m))

(cl:ensure-generic-function 'gesture_state-val :lambda-list '(m))
(cl:defmethod gesture_state-val ((m <Gesture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:gesture_state-val is deprecated.  Use leap_motion-msg:gesture_state instead.")
  (gesture_state m))

(cl:ensure-generic-function 'gesture_type-val :lambda-list '(m))
(cl:defmethod gesture_type-val ((m <Gesture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:gesture_type-val is deprecated.  Use leap_motion-msg:gesture_type instead.")
  (gesture_type m))

(cl:ensure-generic-function 'to_string-val :lambda-list '(m))
(cl:defmethod to_string-val ((m <Gesture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:to_string-val is deprecated.  Use leap_motion-msg:to_string instead.")
  (to_string m))

(cl:ensure-generic-function 'pointable_ids-val :lambda-list '(m))
(cl:defmethod pointable_ids-val ((m <Gesture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:pointable_ids-val is deprecated.  Use leap_motion-msg:pointable_ids instead.")
  (pointable_ids m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Gesture>) ostream)
  "Serializes a message object of type '<Gesture>"
  (cl:let* ((signed (cl:slot-value msg 'lmc_gesture_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_valid) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'duration_us)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'duration_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'gesture_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gesture_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'to_string))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'to_string))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pointable_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'pointable_ids))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Gesture>) istream)
  "Deserializes a message object of type '<Gesture>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lmc_gesture_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'duration_us) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'duration_s) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gesture_state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gesture_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
  (cl:setf (cl:slot-value msg 'pointable_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pointable_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Gesture>)))
  "Returns string type for a message object of type '<Gesture>"
  "leap_motion/Gesture")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gesture)))
  "Returns string type for a message object of type 'Gesture"
  "leap_motion/Gesture")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Gesture>)))
  "Returns md5sum for a message object of type '<Gesture>"
  "a3bf4fe2d0e707244a5a679250ea8eba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Gesture)))
  "Returns md5sum for a message object of type 'Gesture"
  "a3bf4fe2d0e707244a5a679250ea8eba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Gesture>)))
  "Returns full string definition for message of type '<Gesture>"
  (cl:format cl:nil "# A unique id given to this gesture~%int32 lmc_gesture_id~%~%# Reports whether this Gesture instance represents a valid Gesture. ~%bool is_valid~%~%# The elapsed duration of the recognized movement up to the frame containing this ~%# Gesture object, in microseconds. ~%int64 duration_us~%~%# The elapsed duration in seconds.~%float32 duration_s~%~%# Recognized movements occur over time and have a beginning, a middle, and an end. ~%# The 'state' attribute reports where in that sequence this Gesture object falls.~%int32 gesture_state~%### STATE_INVALID == -1~%### STATE_START == 1~%### STATE_UPDATE == 2~%### STATE_STOP == 3~%~%# The supported types of gestures. ~%int32 gesture_type~%### TYPE_INVALID == -1~%### TYPE_SWIPE == 1~%### TYPE_CIRCLE == 4~%### TYPE_SCREEN_TAP == 5~%### TYPE_KEY_TAP == 6~%~%# A string containing a brief, human-readable description of this Gesture. ~%string to_string~%~%# The list of fingers, tools ids associated with this Gesture, if any. ~%int32[] pointable_ids~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Gesture)))
  "Returns full string definition for message of type 'Gesture"
  (cl:format cl:nil "# A unique id given to this gesture~%int32 lmc_gesture_id~%~%# Reports whether this Gesture instance represents a valid Gesture. ~%bool is_valid~%~%# The elapsed duration of the recognized movement up to the frame containing this ~%# Gesture object, in microseconds. ~%int64 duration_us~%~%# The elapsed duration in seconds.~%float32 duration_s~%~%# Recognized movements occur over time and have a beginning, a middle, and an end. ~%# The 'state' attribute reports where in that sequence this Gesture object falls.~%int32 gesture_state~%### STATE_INVALID == -1~%### STATE_START == 1~%### STATE_UPDATE == 2~%### STATE_STOP == 3~%~%# The supported types of gestures. ~%int32 gesture_type~%### TYPE_INVALID == -1~%### TYPE_SWIPE == 1~%### TYPE_CIRCLE == 4~%### TYPE_SCREEN_TAP == 5~%### TYPE_KEY_TAP == 6~%~%# A string containing a brief, human-readable description of this Gesture. ~%string to_string~%~%# The list of fingers, tools ids associated with this Gesture, if any. ~%int32[] pointable_ids~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Gesture>))
  (cl:+ 0
     4
     1
     8
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'to_string))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pointable_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Gesture>))
  "Converts a ROS message object to a list"
  (cl:list 'Gesture
    (cl:cons ':lmc_gesture_id (lmc_gesture_id msg))
    (cl:cons ':is_valid (is_valid msg))
    (cl:cons ':duration_us (duration_us msg))
    (cl:cons ':duration_s (duration_s msg))
    (cl:cons ':gesture_state (gesture_state msg))
    (cl:cons ':gesture_type (gesture_type msg))
    (cl:cons ':to_string (to_string msg))
    (cl:cons ':pointable_ids (pointable_ids msg))
))
