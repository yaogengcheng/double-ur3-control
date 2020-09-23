
(cl:in-package :asdf)

(defsystem "leap_motion-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Arm" :depends-on ("_package_Arm"))
    (:file "_package_Arm" :depends-on ("_package"))
    (:file "Bone" :depends-on ("_package_Bone"))
    (:file "_package_Bone" :depends-on ("_package"))
    (:file "Finger" :depends-on ("_package_Finger"))
    (:file "_package_Finger" :depends-on ("_package"))
    (:file "Gesture" :depends-on ("_package_Gesture"))
    (:file "_package_Gesture" :depends-on ("_package"))
    (:file "Hand" :depends-on ("_package_Hand"))
    (:file "_package_Hand" :depends-on ("_package"))
    (:file "Human" :depends-on ("_package_Human"))
    (:file "_package_Human" :depends-on ("_package"))
    (:file "leap" :depends-on ("_package_leap"))
    (:file "_package_leap" :depends-on ("_package"))
    (:file "leapros" :depends-on ("_package_leapros"))
    (:file "_package_leapros" :depends-on ("_package"))
  ))