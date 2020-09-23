# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "leap_motion: 8 messages, 0 services")

set(MSG_I_FLAGS "-Ileap_motion:/home/asa/ygc_ur/src/leap_motion/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(leap_motion_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/leap.msg" NAME_WE)
add_custom_target(_leap_motion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "leap_motion" "/home/asa/ygc_ur/src/leap_motion/msg/leap.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/Hand.msg" NAME_WE)
add_custom_target(_leap_motion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "leap_motion" "/home/asa/ygc_ur/src/leap_motion/msg/Hand.msg" "leap_motion/Gesture:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Point:leap_motion/Finger:leap_motion/Bone:leap_motion/Arm:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/Bone.msg" NAME_WE)
add_custom_target(_leap_motion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "leap_motion" "/home/asa/ygc_ur/src/leap_motion/msg/Bone.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/Gesture.msg" NAME_WE)
add_custom_target(_leap_motion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "leap_motion" "/home/asa/ygc_ur/src/leap_motion/msg/Gesture.msg" ""
)

get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/leapros.msg" NAME_WE)
add_custom_target(_leap_motion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "leap_motion" "/home/asa/ygc_ur/src/leap_motion/msg/leapros.msg" "geometry_msgs/Point:std_msgs/Header:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/Human.msg" NAME_WE)
add_custom_target(_leap_motion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "leap_motion" "/home/asa/ygc_ur/src/leap_motion/msg/Human.msg" "geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Point:leap_motion/Finger:leap_motion/Bone:leap_motion/Gesture:leap_motion/Arm:leap_motion/Hand"
)

get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/Finger.msg" NAME_WE)
add_custom_target(_leap_motion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "leap_motion" "/home/asa/ygc_ur/src/leap_motion/msg/Finger.msg" "leap_motion/Bone:geometry_msgs/Pose:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/Arm.msg" NAME_WE)
add_custom_target(_leap_motion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "leap_motion" "/home/asa/ygc_ur/src/leap_motion/msg/Arm.msg" "geometry_msgs/Vector3:geometry_msgs/Quaternion:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/leap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leap_motion
)
_generate_msg_cpp(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/Hand.msg"
  "${MSG_I_FLAGS}"
  "/home/asa/ygc_ur/src/leap_motion/msg/Gesture.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/asa/ygc_ur/src/leap_motion/msg/Finger.msg;/home/asa/ygc_ur/src/leap_motion/msg/Bone.msg;/home/asa/ygc_ur/src/leap_motion/msg/Arm.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leap_motion
)
_generate_msg_cpp(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/Bone.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leap_motion
)
_generate_msg_cpp(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/Human.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/asa/ygc_ur/src/leap_motion/msg/Finger.msg;/home/asa/ygc_ur/src/leap_motion/msg/Bone.msg;/home/asa/ygc_ur/src/leap_motion/msg/Gesture.msg;/home/asa/ygc_ur/src/leap_motion/msg/Arm.msg;/home/asa/ygc_ur/src/leap_motion/msg/Hand.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leap_motion
)
_generate_msg_cpp(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/leapros.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leap_motion
)
_generate_msg_cpp(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/Gesture.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leap_motion
)
_generate_msg_cpp(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/Finger.msg"
  "${MSG_I_FLAGS}"
  "/home/asa/ygc_ur/src/leap_motion/msg/Bone.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leap_motion
)
_generate_msg_cpp(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/Arm.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leap_motion
)

### Generating Services

### Generating Module File
_generate_module_cpp(leap_motion
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leap_motion
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(leap_motion_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(leap_motion_generate_messages leap_motion_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/leap.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_cpp _leap_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/Hand.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_cpp _leap_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/Bone.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_cpp _leap_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/Gesture.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_cpp _leap_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/leapros.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_cpp _leap_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/Human.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_cpp _leap_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/Finger.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_cpp _leap_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/Arm.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_cpp _leap_motion_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(leap_motion_gencpp)
add_dependencies(leap_motion_gencpp leap_motion_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS leap_motion_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/leap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/leap_motion
)
_generate_msg_eus(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/Hand.msg"
  "${MSG_I_FLAGS}"
  "/home/asa/ygc_ur/src/leap_motion/msg/Gesture.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/asa/ygc_ur/src/leap_motion/msg/Finger.msg;/home/asa/ygc_ur/src/leap_motion/msg/Bone.msg;/home/asa/ygc_ur/src/leap_motion/msg/Arm.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/leap_motion
)
_generate_msg_eus(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/Bone.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/leap_motion
)
_generate_msg_eus(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/Human.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/asa/ygc_ur/src/leap_motion/msg/Finger.msg;/home/asa/ygc_ur/src/leap_motion/msg/Bone.msg;/home/asa/ygc_ur/src/leap_motion/msg/Gesture.msg;/home/asa/ygc_ur/src/leap_motion/msg/Arm.msg;/home/asa/ygc_ur/src/leap_motion/msg/Hand.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/leap_motion
)
_generate_msg_eus(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/leapros.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/leap_motion
)
_generate_msg_eus(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/Gesture.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/leap_motion
)
_generate_msg_eus(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/Finger.msg"
  "${MSG_I_FLAGS}"
  "/home/asa/ygc_ur/src/leap_motion/msg/Bone.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/leap_motion
)
_generate_msg_eus(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/Arm.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/leap_motion
)

### Generating Services

### Generating Module File
_generate_module_eus(leap_motion
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/leap_motion
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(leap_motion_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(leap_motion_generate_messages leap_motion_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/leap.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_eus _leap_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/Hand.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_eus _leap_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/Bone.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_eus _leap_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/Gesture.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_eus _leap_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/leapros.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_eus _leap_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/Human.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_eus _leap_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/Finger.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_eus _leap_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/Arm.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_eus _leap_motion_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(leap_motion_geneus)
add_dependencies(leap_motion_geneus leap_motion_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS leap_motion_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/leap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leap_motion
)
_generate_msg_lisp(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/Hand.msg"
  "${MSG_I_FLAGS}"
  "/home/asa/ygc_ur/src/leap_motion/msg/Gesture.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/asa/ygc_ur/src/leap_motion/msg/Finger.msg;/home/asa/ygc_ur/src/leap_motion/msg/Bone.msg;/home/asa/ygc_ur/src/leap_motion/msg/Arm.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leap_motion
)
_generate_msg_lisp(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/Bone.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leap_motion
)
_generate_msg_lisp(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/Human.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/asa/ygc_ur/src/leap_motion/msg/Finger.msg;/home/asa/ygc_ur/src/leap_motion/msg/Bone.msg;/home/asa/ygc_ur/src/leap_motion/msg/Gesture.msg;/home/asa/ygc_ur/src/leap_motion/msg/Arm.msg;/home/asa/ygc_ur/src/leap_motion/msg/Hand.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leap_motion
)
_generate_msg_lisp(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/leapros.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leap_motion
)
_generate_msg_lisp(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/Gesture.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leap_motion
)
_generate_msg_lisp(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/Finger.msg"
  "${MSG_I_FLAGS}"
  "/home/asa/ygc_ur/src/leap_motion/msg/Bone.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leap_motion
)
_generate_msg_lisp(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/Arm.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leap_motion
)

### Generating Services

### Generating Module File
_generate_module_lisp(leap_motion
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leap_motion
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(leap_motion_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(leap_motion_generate_messages leap_motion_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/leap.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_lisp _leap_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/Hand.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_lisp _leap_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/Bone.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_lisp _leap_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/Gesture.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_lisp _leap_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/leapros.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_lisp _leap_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/Human.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_lisp _leap_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/Finger.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_lisp _leap_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/Arm.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_lisp _leap_motion_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(leap_motion_genlisp)
add_dependencies(leap_motion_genlisp leap_motion_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS leap_motion_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/leap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/leap_motion
)
_generate_msg_nodejs(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/Hand.msg"
  "${MSG_I_FLAGS}"
  "/home/asa/ygc_ur/src/leap_motion/msg/Gesture.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/asa/ygc_ur/src/leap_motion/msg/Finger.msg;/home/asa/ygc_ur/src/leap_motion/msg/Bone.msg;/home/asa/ygc_ur/src/leap_motion/msg/Arm.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/leap_motion
)
_generate_msg_nodejs(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/Bone.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/leap_motion
)
_generate_msg_nodejs(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/Human.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/asa/ygc_ur/src/leap_motion/msg/Finger.msg;/home/asa/ygc_ur/src/leap_motion/msg/Bone.msg;/home/asa/ygc_ur/src/leap_motion/msg/Gesture.msg;/home/asa/ygc_ur/src/leap_motion/msg/Arm.msg;/home/asa/ygc_ur/src/leap_motion/msg/Hand.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/leap_motion
)
_generate_msg_nodejs(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/leapros.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/leap_motion
)
_generate_msg_nodejs(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/Gesture.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/leap_motion
)
_generate_msg_nodejs(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/Finger.msg"
  "${MSG_I_FLAGS}"
  "/home/asa/ygc_ur/src/leap_motion/msg/Bone.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/leap_motion
)
_generate_msg_nodejs(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/Arm.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/leap_motion
)

### Generating Services

### Generating Module File
_generate_module_nodejs(leap_motion
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/leap_motion
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(leap_motion_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(leap_motion_generate_messages leap_motion_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/leap.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_nodejs _leap_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/Hand.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_nodejs _leap_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/Bone.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_nodejs _leap_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/Gesture.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_nodejs _leap_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/leapros.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_nodejs _leap_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/Human.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_nodejs _leap_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/Finger.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_nodejs _leap_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/Arm.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_nodejs _leap_motion_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(leap_motion_gennodejs)
add_dependencies(leap_motion_gennodejs leap_motion_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS leap_motion_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/leap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leap_motion
)
_generate_msg_py(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/Hand.msg"
  "${MSG_I_FLAGS}"
  "/home/asa/ygc_ur/src/leap_motion/msg/Gesture.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/asa/ygc_ur/src/leap_motion/msg/Finger.msg;/home/asa/ygc_ur/src/leap_motion/msg/Bone.msg;/home/asa/ygc_ur/src/leap_motion/msg/Arm.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leap_motion
)
_generate_msg_py(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/Bone.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leap_motion
)
_generate_msg_py(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/Human.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/asa/ygc_ur/src/leap_motion/msg/Finger.msg;/home/asa/ygc_ur/src/leap_motion/msg/Bone.msg;/home/asa/ygc_ur/src/leap_motion/msg/Gesture.msg;/home/asa/ygc_ur/src/leap_motion/msg/Arm.msg;/home/asa/ygc_ur/src/leap_motion/msg/Hand.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leap_motion
)
_generate_msg_py(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/leapros.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leap_motion
)
_generate_msg_py(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/Gesture.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leap_motion
)
_generate_msg_py(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/Finger.msg"
  "${MSG_I_FLAGS}"
  "/home/asa/ygc_ur/src/leap_motion/msg/Bone.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leap_motion
)
_generate_msg_py(leap_motion
  "/home/asa/ygc_ur/src/leap_motion/msg/Arm.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leap_motion
)

### Generating Services

### Generating Module File
_generate_module_py(leap_motion
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leap_motion
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(leap_motion_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(leap_motion_generate_messages leap_motion_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/leap.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_py _leap_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/Hand.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_py _leap_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/Bone.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_py _leap_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/Gesture.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_py _leap_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/leapros.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_py _leap_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/Human.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_py _leap_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/Finger.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_py _leap_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asa/ygc_ur/src/leap_motion/msg/Arm.msg" NAME_WE)
add_dependencies(leap_motion_generate_messages_py _leap_motion_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(leap_motion_genpy)
add_dependencies(leap_motion_genpy leap_motion_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS leap_motion_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leap_motion)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leap_motion
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(leap_motion_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(leap_motion_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/leap_motion)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/leap_motion
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(leap_motion_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(leap_motion_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leap_motion)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leap_motion
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(leap_motion_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(leap_motion_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/leap_motion)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/leap_motion
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(leap_motion_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(leap_motion_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leap_motion)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leap_motion\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leap_motion
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(leap_motion_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(leap_motion_generate_messages_py std_msgs_generate_messages_py)
endif()
