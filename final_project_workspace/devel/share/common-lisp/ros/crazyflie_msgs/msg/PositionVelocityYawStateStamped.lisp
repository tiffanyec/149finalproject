; Auto-generated. Do not edit!


(cl:in-package crazyflie_msgs-msg)


;//! \htmlinclude PositionVelocityYawStateStamped.msg.html

(cl:defclass <PositionVelocityYawStateStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (state
    :reader state
    :initarg :state
    :type crazyflie_msgs-msg:PositionVelocityYawState
    :initform (cl:make-instance 'crazyflie_msgs-msg:PositionVelocityYawState)))
)

(cl:defclass PositionVelocityYawStateStamped (<PositionVelocityYawStateStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionVelocityYawStateStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionVelocityYawStateStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name crazyflie_msgs-msg:<PositionVelocityYawStateStamped> is deprecated: use crazyflie_msgs-msg:PositionVelocityYawStateStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PositionVelocityYawStateStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie_msgs-msg:header-val is deprecated.  Use crazyflie_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <PositionVelocityYawStateStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie_msgs-msg:state-val is deprecated.  Use crazyflie_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionVelocityYawStateStamped>) ostream)
  "Serializes a message object of type '<PositionVelocityYawStateStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionVelocityYawStateStamped>) istream)
  "Deserializes a message object of type '<PositionVelocityYawStateStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionVelocityYawStateStamped>)))
  "Returns string type for a message object of type '<PositionVelocityYawStateStamped>"
  "crazyflie_msgs/PositionVelocityYawStateStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionVelocityYawStateStamped)))
  "Returns string type for a message object of type 'PositionVelocityYawStateStamped"
  "crazyflie_msgs/PositionVelocityYawStateStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionVelocityYawStateStamped>)))
  "Returns md5sum for a message object of type '<PositionVelocityYawStateStamped>"
  "a6aa560aefcabb217b0840bff40f6ede")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionVelocityYawStateStamped)))
  "Returns md5sum for a message object of type 'PositionVelocityYawStateStamped"
  "a6aa560aefcabb217b0840bff40f6ede")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionVelocityYawStateStamped>)))
  "Returns full string definition for message of type '<PositionVelocityYawStateStamped>"
  (cl:format cl:nil "Header header~%PositionVelocityYawState state~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: crazyflie_msgs/PositionVelocityYawState~%float64 x~%float64 y~%float64 z~%float64 x_dot~%float64 y_dot~%float64 z_dot~%float64 yaw~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionVelocityYawStateStamped)))
  "Returns full string definition for message of type 'PositionVelocityYawStateStamped"
  (cl:format cl:nil "Header header~%PositionVelocityYawState state~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: crazyflie_msgs/PositionVelocityYawState~%float64 x~%float64 y~%float64 z~%float64 x_dot~%float64 y_dot~%float64 z_dot~%float64 yaw~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionVelocityYawStateStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionVelocityYawStateStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionVelocityYawStateStamped
    (cl:cons ':header (header msg))
    (cl:cons ':state (state msg))
))
