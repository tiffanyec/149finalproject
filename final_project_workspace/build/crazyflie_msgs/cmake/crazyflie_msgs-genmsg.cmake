# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "crazyflie_msgs: 13 messages, 0 services")

set(MSG_I_FLAGS "-Icrazyflie_msgs:/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(crazyflie_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityStateStamped.msg" NAME_WE)
add_custom_target(_crazyflie_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "crazyflie_msgs" "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityStateStamped.msg" "std_msgs/Header:crazyflie_msgs/PositionVelocityState"
)

get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PrioritizedControl.msg" NAME_WE)
add_custom_target(_crazyflie_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "crazyflie_msgs" "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PrioritizedControl.msg" "crazyflie_msgs/Control"
)

get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityYawState.msg" NAME_WE)
add_custom_target(_crazyflie_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "crazyflie_msgs" "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityYawState.msg" ""
)

get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityState.msg" NAME_WE)
add_custom_target(_crazyflie_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "crazyflie_msgs" "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityState.msg" ""
)

get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FlagPosition.msg" NAME_WE)
add_custom_target(_crazyflie_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "crazyflie_msgs" "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FlagPosition.msg" ""
)

get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/NoYawControlStamped.msg" NAME_WE)
add_custom_target(_crazyflie_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "crazyflie_msgs" "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/NoYawControlStamped.msg" "crazyflie_msgs/NoYawControl:std_msgs/Header"
)

get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/NoYawControl.msg" NAME_WE)
add_custom_target(_crazyflie_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "crazyflie_msgs" "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/NoYawControl.msg" ""
)

get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FullStateStamped.msg" NAME_WE)
add_custom_target(_crazyflie_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "crazyflie_msgs" "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FullStateStamped.msg" "crazyflie_msgs/FullState:std_msgs/Header"
)

get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PrioritizedControlStamped.msg" NAME_WE)
add_custom_target(_crazyflie_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "crazyflie_msgs" "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PrioritizedControlStamped.msg" "crazyflie_msgs/PrioritizedControl:std_msgs/Header:crazyflie_msgs/Control"
)

get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FullState.msg" NAME_WE)
add_custom_target(_crazyflie_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "crazyflie_msgs" "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FullState.msg" ""
)

get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityYawStateStamped.msg" NAME_WE)
add_custom_target(_crazyflie_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "crazyflie_msgs" "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityYawStateStamped.msg" "crazyflie_msgs/PositionVelocityYawState:std_msgs/Header"
)

get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/Control.msg" NAME_WE)
add_custom_target(_crazyflie_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "crazyflie_msgs" "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/Control.msg" ""
)

get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/ControlStamped.msg" NAME_WE)
add_custom_target(_crazyflie_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "crazyflie_msgs" "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/ControlStamped.msg" "std_msgs/Header:crazyflie_msgs/Control"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityStateStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_cpp(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PrioritizedControl.msg"
  "${MSG_I_FLAGS}"
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/Control.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_cpp(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityYawState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_cpp(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_cpp(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FlagPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_cpp(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/NoYawControlStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/NoYawControl.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_cpp(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/NoYawControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_cpp(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FullStateStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FullState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_cpp(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PrioritizedControlStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PrioritizedControl.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/Control.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_cpp(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FullState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_cpp(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/ControlStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/Control.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_cpp(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/Control.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_cpp(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityYawStateStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityYawState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crazyflie_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(crazyflie_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crazyflie_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(crazyflie_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(crazyflie_msgs_generate_messages crazyflie_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityStateStamped.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_cpp _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PrioritizedControl.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_cpp _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityYawState.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_cpp _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityState.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_cpp _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FlagPosition.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_cpp _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/NoYawControlStamped.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_cpp _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/NoYawControl.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_cpp _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FullStateStamped.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_cpp _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PrioritizedControlStamped.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_cpp _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FullState.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_cpp _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityYawStateStamped.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_cpp _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/Control.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_cpp _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/ControlStamped.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_cpp _crazyflie_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(crazyflie_msgs_gencpp)
add_dependencies(crazyflie_msgs_gencpp crazyflie_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS crazyflie_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityStateStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_eus(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PrioritizedControl.msg"
  "${MSG_I_FLAGS}"
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/Control.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_eus(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityYawState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_eus(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_eus(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FlagPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_eus(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/NoYawControlStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/NoYawControl.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_eus(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/NoYawControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_eus(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FullStateStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FullState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_eus(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PrioritizedControlStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PrioritizedControl.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/Control.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_eus(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FullState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_eus(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/ControlStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/Control.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_eus(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/Control.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_eus(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityYawStateStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityYawState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crazyflie_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(crazyflie_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crazyflie_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(crazyflie_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(crazyflie_msgs_generate_messages crazyflie_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityStateStamped.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_eus _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PrioritizedControl.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_eus _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityYawState.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_eus _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityState.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_eus _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FlagPosition.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_eus _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/NoYawControlStamped.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_eus _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/NoYawControl.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_eus _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FullStateStamped.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_eus _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PrioritizedControlStamped.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_eus _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FullState.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_eus _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityYawStateStamped.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_eus _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/Control.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_eus _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/ControlStamped.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_eus _crazyflie_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(crazyflie_msgs_geneus)
add_dependencies(crazyflie_msgs_geneus crazyflie_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS crazyflie_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityStateStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_lisp(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PrioritizedControl.msg"
  "${MSG_I_FLAGS}"
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/Control.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_lisp(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityYawState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_lisp(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_lisp(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FlagPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_lisp(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/NoYawControlStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/NoYawControl.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_lisp(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/NoYawControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_lisp(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FullStateStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FullState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_lisp(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PrioritizedControlStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PrioritizedControl.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/Control.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_lisp(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FullState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_lisp(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/ControlStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/Control.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_lisp(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/Control.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_lisp(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityYawStateStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityYawState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crazyflie_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(crazyflie_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crazyflie_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(crazyflie_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(crazyflie_msgs_generate_messages crazyflie_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityStateStamped.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_lisp _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PrioritizedControl.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_lisp _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityYawState.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_lisp _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityState.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_lisp _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FlagPosition.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_lisp _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/NoYawControlStamped.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_lisp _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/NoYawControl.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_lisp _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FullStateStamped.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_lisp _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PrioritizedControlStamped.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_lisp _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FullState.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_lisp _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityYawStateStamped.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_lisp _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/Control.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_lisp _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/ControlStamped.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_lisp _crazyflie_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(crazyflie_msgs_genlisp)
add_dependencies(crazyflie_msgs_genlisp crazyflie_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS crazyflie_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityStateStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_nodejs(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PrioritizedControl.msg"
  "${MSG_I_FLAGS}"
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/Control.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_nodejs(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityYawState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_nodejs(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_nodejs(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FlagPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_nodejs(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/NoYawControlStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/NoYawControl.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_nodejs(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/NoYawControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_nodejs(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FullStateStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FullState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_nodejs(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PrioritizedControlStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PrioritizedControl.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/Control.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_nodejs(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FullState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_nodejs(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/ControlStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/Control.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_nodejs(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/Control.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_nodejs(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityYawStateStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityYawState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crazyflie_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(crazyflie_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crazyflie_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(crazyflie_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(crazyflie_msgs_generate_messages crazyflie_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityStateStamped.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_nodejs _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PrioritizedControl.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_nodejs _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityYawState.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_nodejs _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityState.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_nodejs _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FlagPosition.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_nodejs _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/NoYawControlStamped.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_nodejs _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/NoYawControl.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_nodejs _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FullStateStamped.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_nodejs _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PrioritizedControlStamped.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_nodejs _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FullState.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_nodejs _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityYawStateStamped.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_nodejs _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/Control.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_nodejs _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/ControlStamped.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_nodejs _crazyflie_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(crazyflie_msgs_gennodejs)
add_dependencies(crazyflie_msgs_gennodejs crazyflie_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS crazyflie_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityStateStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_py(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PrioritizedControl.msg"
  "${MSG_I_FLAGS}"
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/Control.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_py(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityYawState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_py(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_py(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FlagPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_py(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/NoYawControlStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/NoYawControl.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_py(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/NoYawControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_py(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FullStateStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FullState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_py(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PrioritizedControlStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PrioritizedControl.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/Control.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_py(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FullState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_py(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/ControlStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/Control.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_py(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/Control.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazyflie_msgs
)
_generate_msg_py(crazyflie_msgs
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityYawStateStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityYawState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazyflie_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(crazyflie_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazyflie_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(crazyflie_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(crazyflie_msgs_generate_messages crazyflie_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityStateStamped.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_py _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PrioritizedControl.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_py _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityYawState.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_py _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityState.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_py _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FlagPosition.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_py _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/NoYawControlStamped.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_py _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/NoYawControl.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_py _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FullStateStamped.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_py _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PrioritizedControlStamped.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_py _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/FullState.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_py _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityYawStateStamped.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_py _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/Control.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_py _crazyflie_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eecs149_rst/final_project_workspace/src/crazyflie_msgs/msg/ControlStamped.msg" NAME_WE)
add_dependencies(crazyflie_msgs_generate_messages_py _crazyflie_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(crazyflie_msgs_genpy)
add_dependencies(crazyflie_msgs_genpy crazyflie_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS crazyflie_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crazyflie_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/crazyflie_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(crazyflie_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(crazyflie_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crazyflie_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/crazyflie_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(crazyflie_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(crazyflie_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crazyflie_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/crazyflie_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(crazyflie_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(crazyflie_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crazyflie_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/crazyflie_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(crazyflie_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(crazyflie_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazyflie_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazyflie_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/crazyflie_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(crazyflie_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(crazyflie_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
