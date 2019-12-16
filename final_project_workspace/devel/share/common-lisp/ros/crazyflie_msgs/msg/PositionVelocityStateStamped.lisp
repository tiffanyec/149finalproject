; Auto-generated. Do not edit!


(cl:in-package crazyflie_msgs-msg)


;//! \htmlinclude PositionVelocityStateStamped.msg.html

(cl:defclass <PositionVelocityStateStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (state
    :reader state
    :initarg :state
    :type crazyflie_msgs-msg:PositionVelocityState
    :initform (cl:make-instance 'crazyflie_msgs-msg:PositionVelocityState)))
)

(cl:defclass PositionVelocityStateStamped (<PositionVelocityStateStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionVelocityStateStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionVelocityStateStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name crazyflie_msgs-msg:<PositionVelocityStateStamped> is deprecated: use crazyflie_msgs-msg:PositionVelocityStateStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PositionVelocityStateStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie_msgs-msg:header-val is deprecated.  Use crazyflie_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <PositionVelocityStateStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie_msgs-msg:state-val is deprecated.  Use crazyflie_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionVelocityStateStamped>) ostream)
  "Serializes a message object of type '<PositionVelocityStateStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionVelocityStateStamped>) istream)
  "Deserializes a message object of type '<PositionVelocityStateStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionVelocityStateStamped>)))
  "Returns string type for a message object of type '<PositionVelocityStateStamped>"
  "crazyflie_msgs/PositionVelocityStateStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionVelocityStateStamped)))
  "Returns string type for a message object of type 'PositionVelocityStateStamped"
  "crazyflie_msgs/PositionVelocityStateStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionVelocityStateStamped>)))
  "Returns md5sum for a message object of type '<PositionVelocityStateStamped>"
  "d7e2e75df27e542774773e0a516e76ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionVelocityStateStamped)))
  "Returns md5sum for a message object of type 'PositionVelocityStateStamped"
  "d7e2e75df27e542774773e0a516e76ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionVelocityStateStamped>)))
  "Returns full string definition for message of type '<PositionVelocityStateStamped>"
  (cl:format cl:nil "Header header~%PositionVelocityState state~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: crazyflie_msgs/PositionVelocityState~%float64 x~%float64 y~%float64 z~%float64 x_dot~%float64 y_dot~%float64 z_dot~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionVelocityStateStamped)))
  "Returns full string definition for message of type 'PositionVelocityStateStamped"
  (cl:format cl:nil "Header header~%PositionVelocityState state~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: crazyflie_msgs/PositionVelocityState~%float64 x~%float64 y~%float64 z~%float64 x_dot~%float64 y_dot~%float64 z_dot~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionVelocityStateStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionVelocityStateStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionVelocityStateStamped
    (cl:cons ':header (header msg))
    (cl:cons ':state (state msg))
))
