;; Auto-generated. Do not edit!


(when (boundp 'leap_motion::Gesture)
  (if (not (find-package "LEAP_MOTION"))
    (make-package "LEAP_MOTION"))
  (shadow 'Gesture (find-package "LEAP_MOTION")))
(unless (find-package "LEAP_MOTION::GESTURE")
  (make-package "LEAP_MOTION::GESTURE"))

(in-package "ROS")
;;//! \htmlinclude Gesture.msg.html


(defclass leap_motion::Gesture
  :super ros::object
  :slots (_lmc_gesture_id _is_valid _duration_us _duration_s _gesture_state _gesture_type _to_string _pointable_ids ))

(defmethod leap_motion::Gesture
  (:init
   (&key
    ((:lmc_gesture_id __lmc_gesture_id) 0)
    ((:is_valid __is_valid) nil)
    ((:duration_us __duration_us) 0)
    ((:duration_s __duration_s) 0.0)
    ((:gesture_state __gesture_state) 0)
    ((:gesture_type __gesture_type) 0)
    ((:to_string __to_string) "")
    ((:pointable_ids __pointable_ids) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _lmc_gesture_id (round __lmc_gesture_id))
   (setq _is_valid __is_valid)
   (setq _duration_us (round __duration_us))
   (setq _duration_s (float __duration_s))
   (setq _gesture_state (round __gesture_state))
   (setq _gesture_type (round __gesture_type))
   (setq _to_string (string __to_string))
   (setq _pointable_ids __pointable_ids)
   self)
  (:lmc_gesture_id
   (&optional __lmc_gesture_id)
   (if __lmc_gesture_id (setq _lmc_gesture_id __lmc_gesture_id)) _lmc_gesture_id)
  (:is_valid
   (&optional __is_valid)
   (if __is_valid (setq _is_valid __is_valid)) _is_valid)
  (:duration_us
   (&optional __duration_us)
   (if __duration_us (setq _duration_us __duration_us)) _duration_us)
  (:duration_s
   (&optional __duration_s)
   (if __duration_s (setq _duration_s __duration_s)) _duration_s)
  (:gesture_state
   (&optional __gesture_state)
   (if __gesture_state (setq _gesture_state __gesture_state)) _gesture_state)
  (:gesture_type
   (&optional __gesture_type)
   (if __gesture_type (setq _gesture_type __gesture_type)) _gesture_type)
  (:to_string
   (&optional __to_string)
   (if __to_string (setq _to_string __to_string)) _to_string)
  (:pointable_ids
   (&optional __pointable_ids)
   (if __pointable_ids (setq _pointable_ids __pointable_ids)) _pointable_ids)
  (:serialization-length
   ()
   (+
    ;; int32 _lmc_gesture_id
    4
    ;; bool _is_valid
    1
    ;; int64 _duration_us
    8
    ;; float32 _duration_s
    4
    ;; int32 _gesture_state
    4
    ;; int32 _gesture_type
    4
    ;; string _to_string
    4 (length _to_string)
    ;; int32[] _pointable_ids
    (* 4    (length _pointable_ids)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _lmc_gesture_id
       (write-long _lmc_gesture_id s)
     ;; bool _is_valid
       (if _is_valid (write-byte -1 s) (write-byte 0 s))
     ;; int64 _duration_us
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _duration_us (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _duration_us) (= (length (_duration_us . bv)) 2)) ;; bignum
              (write-long (ash (elt (_duration_us . bv) 0) 0) s)
              (write-long (ash (elt (_duration_us . bv) 1) -1) s))
             ((and (class _duration_us) (= (length (_duration_us . bv)) 1)) ;; big1
              (write-long (elt (_duration_us . bv) 0) s)
              (write-long (if (>= _duration_us 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _duration_us s)(write-long (if (>= _duration_us 0) 0 #xffffffff) s)))
     ;; float32 _duration_s
       (sys::poke _duration_s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _gesture_state
       (write-long _gesture_state s)
     ;; int32 _gesture_type
       (write-long _gesture_type s)
     ;; string _to_string
       (write-long (length _to_string) s) (princ _to_string s)
     ;; int32[] _pointable_ids
     (write-long (length _pointable_ids) s)
     (dotimes (i (length _pointable_ids))
       (write-long (elt _pointable_ids i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _lmc_gesture_id
     (setq _lmc_gesture_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _is_valid
     (setq _is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int64 _duration_us
#+(or :alpha :irix6 :x86_64)
      (setf _duration_us (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _duration_us (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float32 _duration_s
     (setq _duration_s (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _gesture_state
     (setq _gesture_state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _gesture_type
     (setq _gesture_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _to_string
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _to_string (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32[] _pointable_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pointable_ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _pointable_ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get leap_motion::Gesture :md5sum-) "a3bf4fe2d0e707244a5a679250ea8eba")
(setf (get leap_motion::Gesture :datatype-) "leap_motion/Gesture")
(setf (get leap_motion::Gesture :definition-)
      "# A unique id given to this gesture
int32 lmc_gesture_id

# Reports whether this Gesture instance represents a valid Gesture. 
bool is_valid

# The elapsed duration of the recognized movement up to the frame containing this 
# Gesture object, in microseconds. 
int64 duration_us

# The elapsed duration in seconds.
float32 duration_s

# Recognized movements occur over time and have a beginning, a middle, and an end. 
# The 'state' attribute reports where in that sequence this Gesture object falls.
int32 gesture_state
### STATE_INVALID == -1
### STATE_START == 1
### STATE_UPDATE == 2
### STATE_STOP == 3

# The supported types of gestures. 
int32 gesture_type
### TYPE_INVALID == -1
### TYPE_SWIPE == 1
### TYPE_CIRCLE == 4
### TYPE_SCREEN_TAP == 5
### TYPE_KEY_TAP == 6

# A string containing a brief, human-readable description of this Gesture. 
string to_string

# The list of fingers, tools ids associated with this Gesture, if any. 
int32[] pointable_ids


")



(provide :leap_motion/Gesture "a3bf4fe2d0e707244a5a679250ea8eba")


