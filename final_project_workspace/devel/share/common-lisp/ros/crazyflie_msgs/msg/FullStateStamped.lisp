; Auto-generated. Do not edit!


(cl:in-package crazyflie_msgs-msg)


;//! \htmlinclude FullStateStamped.msg.html

(cl:defclass <FullStateStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (state
    :reader state
    :initarg :state
    :type crazyflie_msgs-msg:FullState
    :initform (cl:make-instance 'crazyflie_msgs-msg:FullState)))
)

(cl:defclass FullStateStamped (<FullStateStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FullStateStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FullStateStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name crazyflie_msgs-msg:<FullStateStamped> is deprecated: use crazyflie_msgs-msg:FullStateStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FullStateStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie_msgs-msg:header-val is deprecated.  Use crazyflie_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <FullStateStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie_msgs-msg:state-val is deprecated.  Use crazyflie_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FullStateStamped>) ostream)
  "Serializes a message object of type '<FullStateStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FullStateStamped>) istream)
  "Deserializes a message object of type '<FullStateStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FullStateStamped>)))
  "Returns string type for a message object of type '<FullStateStamped>"
  "crazyflie_msgs/FullStateStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FullStateStamped)))
  "Returns string type for a message object of type 'FullStateStamped"
  "crazyflie_msgs/FullStateStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FullStateStamped>)))
  "Returns md5sum for a message object of type '<FullStateStamped>"
  "95ca4cda6afad75c125ca4a75fb052d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FullStateStamped)))
  "Returns md5sum for a message object of type 'FullStateStamped"
  "95ca4cda6afad75c125ca4a75fb052d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FullStateStamped>)))
  "Returns full string definition for message of type '<FullStateStamped>"
  (cl:format cl:nil "Header header~%FullState state~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: crazyflie_msgs/FullState~%float64 x~%float64 y~%float64 z~%float64 x_dot~%float64 y_dot~%float64 z_dot~%float64 roll~%float64 pitch~%float64 yaw~%float64 roll_dot~%float64 pitch_dot~%float64 yaw_dot~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FullStateStamped)))
  "Returns full string definition for message of type 'FullStateStamped"
  (cl:format cl:nil "Header header~%FullState state~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: crazyflie_msgs/FullState~%float64 x~%float64 y~%float64 z~%float64 x_dot~%float64 y_dot~%float64 z_dot~%float64 roll~%float64 pitch~%float64 yaw~%float64 roll_dot~%float64 pitch_dot~%float64 yaw_dot~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FullStateStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FullStateStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'FullStateStamped
    (cl:cons ':header (header msg))
    (cl:cons ':state (state msg))
))
