; Auto-generated. Do not edit!


(cl:in-package leap_motion-msg)


;//! \htmlinclude Hand.msg.html

(cl:defclass <Hand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (lmc_hand_id
    :reader lmc_hand_id
    :initarg :lmc_hand_id
    :type cl:integer
    :initform 0)
   (is_present
    :reader is_present
    :initarg :is_present
    :type cl:boolean
    :initform cl:nil)
   (valid_gestures
    :reader valid_gestures
    :initarg :valid_gestures
    :type cl:boolean
    :initform cl:nil)
   (time_visible
    :reader time_visible
    :initarg :time_visible
    :type cl:float
    :initform 0.0)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0)
   (roll
    :reader roll
    :initarg :roll
    :type cl:float
    :initform 0.0)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
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
   (grab_strength
    :reader grab_strength
    :initarg :grab_strength
    :type cl:float
    :initform 0.0)
   (pinch_strength
    :reader pinch_strength
    :initarg :pinch_strength
    :type cl:float
    :initform 0.0)
   (palm_velocity
    :reader palm_velocity
    :initarg :palm_velocity
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (palm_center
    :reader palm_center
    :initarg :palm_center
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (palm_width
    :reader palm_width
    :initarg :palm_width
    :type cl:float
    :initform 0.0)
   (sphere_radius
    :reader sphere_radius
    :initarg :sphere_radius
    :type cl:float
    :initform 0.0)
   (sphere_center
    :reader sphere_center
    :initarg :sphere_center
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (to_string
    :reader to_string
    :initarg :to_string
    :type cl:string
    :initform "")
   (finger_list
    :reader finger_list
    :initarg :finger_list
    :type (cl:vector leap_motion-msg:Finger)
   :initform (cl:make-array 0 :element-type 'leap_motion-msg:Finger :initial-element (cl:make-instance 'leap_motion-msg:Finger)))
   (gesture_list
    :reader gesture_list
    :initarg :gesture_list
    :type (cl:vector leap_motion-msg:Gesture)
   :initform (cl:make-array 0 :element-type 'leap_motion-msg:Gesture :initial-element (cl:make-instance 'leap_motion-msg:Gesture)))
   (arm
    :reader arm
    :initarg :arm
    :type leap_motion-msg:Arm
    :initform (cl:make-instance 'leap_motion-msg:Arm)))
)

(cl:defclass Hand (<Hand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Hand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Hand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name leap_motion-msg:<Hand> is deprecated: use leap_motion-msg:Hand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Hand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:header-val is deprecated.  Use leap_motion-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'lmc_hand_id-val :lambda-list '(m))
(cl:defmethod lmc_hand_id-val ((m <Hand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:lmc_hand_id-val is deprecated.  Use leap_motion-msg:lmc_hand_id instead.")
  (lmc_hand_id m))

(cl:ensure-generic-function 'is_present-val :lambda-list '(m))
(cl:defmethod is_present-val ((m <Hand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:is_present-val is deprecated.  Use leap_motion-msg:is_present instead.")
  (is_present m))

(cl:ensure-generic-function 'valid_gestures-val :lambda-list '(m))
(cl:defmethod valid_gestures-val ((m <Hand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:valid_gestures-val is deprecated.  Use leap_motion-msg:valid_gestures instead.")
  (valid_gestures m))

(cl:ensure-generic-function 'time_visible-val :lambda-list '(m))
(cl:defmethod time_visible-val ((m <Hand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:time_visible-val is deprecated.  Use leap_motion-msg:time_visible instead.")
  (time_visible m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <Hand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:confidence-val is deprecated.  Use leap_motion-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <Hand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:roll-val is deprecated.  Use leap_motion-msg:roll instead.")
  (roll m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <Hand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:pitch-val is deprecated.  Use leap_motion-msg:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <Hand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:yaw-val is deprecated.  Use leap_motion-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <Hand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:direction-val is deprecated.  Use leap_motion-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'normal-val :lambda-list '(m))
(cl:defmethod normal-val ((m <Hand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:normal-val is deprecated.  Use leap_motion-msg:normal instead.")
  (normal m))

(cl:ensure-generic-function 'grab_strength-val :lambda-list '(m))
(cl:defmethod grab_strength-val ((m <Hand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:grab_strength-val is deprecated.  Use leap_motion-msg:grab_strength instead.")
  (grab_strength m))

(cl:ensure-generic-function 'pinch_strength-val :lambda-list '(m))
(cl:defmethod pinch_strength-val ((m <Hand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:pinch_strength-val is deprecated.  Use leap_motion-msg:pinch_strength instead.")
  (pinch_strength m))

(cl:ensure-generic-function 'palm_velocity-val :lambda-list '(m))
(cl:defmethod palm_velocity-val ((m <Hand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:palm_velocity-val is deprecated.  Use leap_motion-msg:palm_velocity instead.")
  (palm_velocity m))

(cl:ensure-generic-function 'palm_center-val :lambda-list '(m))
(cl:defmethod palm_center-val ((m <Hand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:palm_center-val is deprecated.  Use leap_motion-msg:palm_center instead.")
  (palm_center m))

(cl:ensure-generic-function 'palm_width-val :lambda-list '(m))
(cl:defmethod palm_width-val ((m <Hand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:palm_width-val is deprecated.  Use leap_motion-msg:palm_width instead.")
  (palm_width m))

(cl:ensure-generic-function 'sphere_radius-val :lambda-list '(m))
(cl:defmethod sphere_radius-val ((m <Hand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:sphere_radius-val is deprecated.  Use leap_motion-msg:sphere_radius instead.")
  (sphere_radius m))

(cl:ensure-generic-function 'sphere_center-val :lambda-list '(m))
(cl:defmethod sphere_center-val ((m <Hand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:sphere_center-val is deprecated.  Use leap_motion-msg:sphere_center instead.")
  (sphere_center m))

(cl:ensure-generic-function 'to_string-val :lambda-list '(m))
(cl:defmethod to_string-val ((m <Hand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:to_string-val is deprecated.  Use leap_motion-msg:to_string instead.")
  (to_string m))

(cl:ensure-generic-function 'finger_list-val :lambda-list '(m))
(cl:defmethod finger_list-val ((m <Hand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:finger_list-val is deprecated.  Use leap_motion-msg:finger_list instead.")
  (finger_list m))

(cl:ensure-generic-function 'gesture_list-val :lambda-list '(m))
(cl:defmethod gesture_list-val ((m <Hand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:gesture_list-val is deprecated.  Use leap_motion-msg:gesture_list instead.")
  (gesture_list m))

(cl:ensure-generic-function 'arm-val :lambda-list '(m))
(cl:defmethod arm-val ((m <Hand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion-msg:arm-val is deprecated.  Use leap_motion-msg:arm instead.")
  (arm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Hand>) ostream)
  "Serializes a message object of type '<Hand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'lmc_hand_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_present) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'valid_gestures) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time_visible))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'direction) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'normal) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'grab_strength))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pinch_strength))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'palm_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'palm_velocity))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'palm_center) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'palm_width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sphere_radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sphere_center))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'sphere_center))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'to_string))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'to_string))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'finger_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'finger_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'gesture_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'gesture_list))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'arm) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Hand>) istream)
  "Deserializes a message object of type '<Hand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lmc_hand_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'is_present) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'valid_gestures) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_visible) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'direction) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'normal) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'grab_strength) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pinch_strength) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'palm_velocity) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'palm_velocity)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'palm_center) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'palm_width) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sphere_radius) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sphere_center) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sphere_center)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
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
  (cl:setf (cl:slot-value msg 'finger_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'finger_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'leap_motion-msg:Finger))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'gesture_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'gesture_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'leap_motion-msg:Gesture))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'arm) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Hand>)))
  "Returns string type for a message object of type '<Hand>"
  "leap_motion/Hand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Hand)))
  "Returns string type for a message object of type 'Hand"
  "leap_motion/Hand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Hand>)))
  "Returns md5sum for a message object of type '<Hand>"
  "9054fd3f5821eae3259c31fe94fd08a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Hand)))
  "Returns md5sum for a message object of type 'Hand"
  "9054fd3f5821eae3259c31fe94fd08a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Hand>)))
  "Returns full string definition for message of type '<Hand>"
  (cl:format cl:nil "std_msgs/Header header~%~%# A unique ID assigned to this Hand object~%int32 lmc_hand_id~%~%# This changed to between true/false depending if there's a hand detected in the LMC frame~%bool is_present~%~%# This changed to between true/false depending if there's a hand detected in the LMC frame~%bool valid_gestures~%~%# The duration of time this Hand has been visible to the Leap Motion Controller. ~%float32 time_visible~%~%# How confident we are with a given hand pose. ~%# The confidence level ranges between 0.0 and 1.0 inclusive.~%float32 confidence~%~%# The following three angles are in radians!~%float32 roll~%float32 pitch~%float32 yaw~%~%# The direction vector~%geometry_msgs/Vector3 direction~%~%# The normal vector~%geometry_msgs/Vector3 normal~%~%# The angle between the fingers and the hand of a grab hand pose. ~%# In radians~%float32 grab_strength~%~%# The distance between the thumb and index finger of a pinch hand pose. ~%float32 pinch_strength~%~%# The rate of change of the palm position in meters/second. ~%float32[] palm_velocity~%~%# The center position of the palm in meters from the Leap Motion Controller origin. ~%geometry_msgs/Point palm_center~%~%# The estimated width of the palm when the hand is in a flat position. ~%float32 palm_width~%~%# The radius (m) of a sphere fit to the curvature of this hand. ~%float32 sphere_radius~%~%# The center of a sphere fit to the curvature of this hand. ~%float32[] sphere_center~%~%# A string containing a brief, human readable description of the Hand object. ~%string to_string ~%~%# A list of fingers and gestures associated with this hand~%Finger[] finger_list~%Gesture[] gesture_list~%~%# The arm associated with this hand~%Arm arm~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: leap_motion/Finger~%std_msgs/Header header~%~%# A unique id given to this finger~%int32 lmc_finger_id~%~%# The name of this finger. ~%uint8 type~%~%# The estimated length of the finger in meters. ~%float32 length~%~%# The estimated width of the finger in meters.~%float32 width~%~%# A string containing a brief, human readable description of the Finger object. ~%string to_string~%~%# List of bones associated with this finger~%Bone[] bone_list~%================================================================================~%MSG: leap_motion/Bone~%std_msgs/Header header~%~%# The name of this bone. ~%uint8 type~%~%# The estimated length of the bone in meters.~%float32 length~%~%# The estimated with of the bone in meters.~%float32 width~%~%# A string containing a brief, human readable description of the Bone object. ~%string to_string~%~%# The base of the bone, closest to the wrist. ~%geometry_msgs/Pose bone_start~%~%# The end of the bone, closest to the finger tip. ~%geometry_msgs/Pose bone_end~%~%# The midpoint of the bone. ~%float32[] center~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: leap_motion/Gesture~%# A unique id given to this gesture~%int32 lmc_gesture_id~%~%# Reports whether this Gesture instance represents a valid Gesture. ~%bool is_valid~%~%# The elapsed duration of the recognized movement up to the frame containing this ~%# Gesture object, in microseconds. ~%int64 duration_us~%~%# The elapsed duration in seconds.~%float32 duration_s~%~%# Recognized movements occur over time and have a beginning, a middle, and an end. ~%# The 'state' attribute reports where in that sequence this Gesture object falls.~%int32 gesture_state~%### STATE_INVALID == -1~%### STATE_START == 1~%### STATE_UPDATE == 2~%### STATE_STOP == 3~%~%# The supported types of gestures. ~%int32 gesture_type~%### TYPE_INVALID == -1~%### TYPE_SWIPE == 1~%### TYPE_CIRCLE == 4~%### TYPE_SCREEN_TAP == 5~%### TYPE_KEY_TAP == 6~%~%# A string containing a brief, human-readable description of this Gesture. ~%string to_string~%~%# The list of fingers, tools ids associated with this Gesture, if any. ~%int32[] pointable_ids~%~%~%================================================================================~%MSG: leap_motion/Arm~%std_msgs/Header header~%~%# The position and orientation of the elbow. ~%geometry_msgs/Pose elbow~%~%# The position and orientation of the wrist. ~%geometry_msgs/Pose wrist~%~%# The midpoint of the forearm. ~%float32[] center~%~%# The direction vector of the forearm~%geometry_msgs/Vector3 direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Hand)))
  "Returns full string definition for message of type 'Hand"
  (cl:format cl:nil "std_msgs/Header header~%~%# A unique ID assigned to this Hand object~%int32 lmc_hand_id~%~%# This changed to between true/false depending if there's a hand detected in the LMC frame~%bool is_present~%~%# This changed to between true/false depending if there's a hand detected in the LMC frame~%bool valid_gestures~%~%# The duration of time this Hand has been visible to the Leap Motion Controller. ~%float32 time_visible~%~%# How confident we are with a given hand pose. ~%# The confidence level ranges between 0.0 and 1.0 inclusive.~%float32 confidence~%~%# The following three angles are in radians!~%float32 roll~%float32 pitch~%float32 yaw~%~%# The direction vector~%geometry_msgs/Vector3 direction~%~%# The normal vector~%geometry_msgs/Vector3 normal~%~%# The angle between the fingers and the hand of a grab hand pose. ~%# In radians~%float32 grab_strength~%~%# The distance between the thumb and index finger of a pinch hand pose. ~%float32 pinch_strength~%~%# The rate of change of the palm position in meters/second. ~%float32[] palm_velocity~%~%# The center position of the palm in meters from the Leap Motion Controller origin. ~%geometry_msgs/Point palm_center~%~%# The estimated width of the palm when the hand is in a flat position. ~%float32 palm_width~%~%# The radius (m) of a sphere fit to the curvature of this hand. ~%float32 sphere_radius~%~%# The center of a sphere fit to the curvature of this hand. ~%float32[] sphere_center~%~%# A string containing a brief, human readable description of the Hand object. ~%string to_string ~%~%# A list of fingers and gestures associated with this hand~%Finger[] finger_list~%Gesture[] gesture_list~%~%# The arm associated with this hand~%Arm arm~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: leap_motion/Finger~%std_msgs/Header header~%~%# A unique id given to this finger~%int32 lmc_finger_id~%~%# The name of this finger. ~%uint8 type~%~%# The estimated length of the finger in meters. ~%float32 length~%~%# The estimated width of the finger in meters.~%float32 width~%~%# A string containing a brief, human readable description of the Finger object. ~%string to_string~%~%# List of bones associated with this finger~%Bone[] bone_list~%================================================================================~%MSG: leap_motion/Bone~%std_msgs/Header header~%~%# The name of this bone. ~%uint8 type~%~%# The estimated length of the bone in meters.~%float32 length~%~%# The estimated with of the bone in meters.~%float32 width~%~%# A string containing a brief, human readable description of the Bone object. ~%string to_string~%~%# The base of the bone, closest to the wrist. ~%geometry_msgs/Pose bone_start~%~%# The end of the bone, closest to the finger tip. ~%geometry_msgs/Pose bone_end~%~%# The midpoint of the bone. ~%float32[] center~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: leap_motion/Gesture~%# A unique id given to this gesture~%int32 lmc_gesture_id~%~%# Reports whether this Gesture instance represents a valid Gesture. ~%bool is_valid~%~%# The elapsed duration of the recognized movement up to the frame containing this ~%# Gesture object, in microseconds. ~%int64 duration_us~%~%# The elapsed duration in seconds.~%float32 duration_s~%~%# Recognized movements occur over time and have a beginning, a middle, and an end. ~%# The 'state' attribute reports where in that sequence this Gesture object falls.~%int32 gesture_state~%### STATE_INVALID == -1~%### STATE_START == 1~%### STATE_UPDATE == 2~%### STATE_STOP == 3~%~%# The supported types of gestures. ~%int32 gesture_type~%### TYPE_INVALID == -1~%### TYPE_SWIPE == 1~%### TYPE_CIRCLE == 4~%### TYPE_SCREEN_TAP == 5~%### TYPE_KEY_TAP == 6~%~%# A string containing a brief, human-readable description of this Gesture. ~%string to_string~%~%# The list of fingers, tools ids associated with this Gesture, if any. ~%int32[] pointable_ids~%~%~%================================================================================~%MSG: leap_motion/Arm~%std_msgs/Header header~%~%# The position and orientation of the elbow. ~%geometry_msgs/Pose elbow~%~%# The position and orientation of the wrist. ~%geometry_msgs/Pose wrist~%~%# The midpoint of the forearm. ~%float32[] center~%~%# The direction vector of the forearm~%geometry_msgs/Vector3 direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Hand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     1
     1
     4
     4
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'direction))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'normal))
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'palm_velocity) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'palm_center))
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sphere_center) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:length (cl:slot-value msg 'to_string))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'finger_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'gesture_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'arm))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Hand>))
  "Converts a ROS message object to a list"
  (cl:list 'Hand
    (cl:cons ':header (header msg))
    (cl:cons ':lmc_hand_id (lmc_hand_id msg))
    (cl:cons ':is_present (is_present msg))
    (cl:cons ':valid_gestures (valid_gestures msg))
    (cl:cons ':time_visible (time_visible msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':roll (roll msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':direction (direction msg))
    (cl:cons ':normal (normal msg))
    (cl:cons ':grab_strength (grab_strength msg))
    (cl:cons ':pinch_strength (pinch_strength msg))
    (cl:cons ':palm_velocity (palm_velocity msg))
    (cl:cons ':palm_center (palm_center msg))
    (cl:cons ':palm_width (palm_width msg))
    (cl:cons ':sphere_radius (sphere_radius msg))
    (cl:cons ':sphere_center (sphere_center msg))
    (cl:cons ':to_string (to_string msg))
    (cl:cons ':finger_list (finger_list msg))
    (cl:cons ':gesture_list (gesture_list msg))
    (cl:cons ':arm (arm msg))
))
