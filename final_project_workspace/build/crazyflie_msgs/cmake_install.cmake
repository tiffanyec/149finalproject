# Install script for directory: /home/eecs149_rst/149finalproject/final_project_workspace/src/crazyflie_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/eecs149_rst/149finalproject/final_project_workspace/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/crazyflie_msgs/msg" TYPE FILE FILES
    "/home/eecs149_rst/149finalproject/final_project_workspace/src/crazyflie_msgs/msg/PrioritizedControlStamped.msg"
    "/home/eecs149_rst/149finalproject/final_project_workspace/src/crazyflie_msgs/msg/Control.msg"
    "/home/eecs149_rst/149finalproject/final_project_workspace/src/crazyflie_msgs/msg/FullState.msg"
    "/home/eecs149_rst/149finalproject/final_project_workspace/src/crazyflie_msgs/msg/FullStateStamped.msg"
    "/home/eecs149_rst/149finalproject/final_project_workspace/src/crazyflie_msgs/msg/FlagPosition.msg"
    "/home/eecs149_rst/149finalproject/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityYawStateStamped.msg"
    "/home/eecs149_rst/149finalproject/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityYawState.msg"
    "/home/eecs149_rst/149finalproject/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityStateStamped.msg"
    "/home/eecs149_rst/149finalproject/final_project_workspace/src/crazyflie_msgs/msg/ControlStamped.msg"
    "/home/eecs149_rst/149finalproject/final_project_workspace/src/crazyflie_msgs/msg/PositionVelocityState.msg"
    "/home/eecs149_rst/149finalproject/final_project_workspace/src/crazyflie_msgs/msg/PrioritizedControl.msg"
    "/home/eecs149_rst/149finalproject/final_project_workspace/src/crazyflie_msgs/msg/NoYawControl.msg"
    "/home/eecs149_rst/149finalproject/final_project_workspace/src/crazyflie_msgs/msg/NoYawControlStamped.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/crazyflie_msgs/cmake" TYPE FILE FILES "/home/eecs149_rst/149finalproject/final_project_workspace/build/crazyflie_msgs/catkin_generated/installspace/crazyflie_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/eecs149_rst/149finalproject/final_project_workspace/devel/include/crazyflie_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/eecs149_rst/149finalproject/final_project_workspace/devel/share/roseus/ros/crazyflie_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/eecs149_rst/149finalproject/final_project_workspace/devel/share/common-lisp/ros/crazyflie_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/eecs149_rst/149finalproject/final_project_workspace/devel/share/gennodejs/ros/crazyflie_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/eecs149_rst/149finalproject/final_project_workspace/devel/lib/python2.7/dist-packages/crazyflie_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/eecs149_rst/149finalproject/final_project_workspace/devel/lib/python2.7/dist-packages/crazyflie_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/eecs149_rst/149finalproject/final_project_workspace/build/crazyflie_msgs/catkin_generated/installspace/crazyflie_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/crazyflie_msgs/cmake" TYPE FILE FILES "/home/eecs149_rst/149finalproject/final_project_workspace/build/crazyflie_msgs/catkin_generated/installspace/crazyflie_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/crazyflie_msgs/cmake" TYPE FILE FILES
    "/home/eecs149_rst/149finalproject/final_project_workspace/build/crazyflie_msgs/catkin_generated/installspace/crazyflie_msgsConfig.cmake"
    "/home/eecs149_rst/149finalproject/final_project_workspace/build/crazyflie_msgs/catkin_generated/installspace/crazyflie_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/crazyflie_msgs" TYPE FILE FILES "/home/eecs149_rst/149finalproject/final_project_workspace/src/crazyflie_msgs/package.xml")
endif()

