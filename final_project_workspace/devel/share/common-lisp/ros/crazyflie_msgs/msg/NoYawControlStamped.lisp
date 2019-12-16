; Auto-generated. Do not edit!


(cl:in-package crazyflie_msgs-msg)


;//! \htmlinclude NoYawControlStamped.msg.html

(cl:defclass <NoYawControlStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (control
    :reader control
    :initarg :control
    :type crazyflie_msgs-msg:NoYawControl
    :initform (cl:make-instance 'crazyflie_msgs-msg:NoYawControl)))
)

(cl:defclass NoYawControlStamped (<NoYawControlStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NoYawControlStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NoYawControlStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name crazyflie_msgs-msg:<NoYawControlStamped> is deprecated: use crazyflie_msgs-msg:NoYawControlStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NoYawControlStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie_msgs-msg:header-val is deprecated.  Use crazyflie_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'control-val :lambda-list '(m))
(cl:defmethod control-val ((m <NoYawControlStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie_msgs-msg:control-val is deprecated.  Use crazyflie_msgs-msg:control instead.")
  (control m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NoYawControlStamped>) ostream)
  "Serializes a message object of type '<NoYawControlStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'control) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NoYawControlStamped>) istream)
  "Deserializes a message object of type '<NoYawControlStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'control) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NoYawControlStamped>)))
  "Returns string type for a message object of type '<NoYawControlStamped>"
  "crazyflie_msgs/NoYawControlStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NoYawControlStamped)))
  "Returns string type for a message object of type 'NoYawControlStamped"
  "crazyflie_msgs/NoYawControlStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NoYawControlStamped>)))
  "Returns md5sum for a message object of type '<NoYawControlStamped>"
  "466772a94931602dc602bc0ab3b45e59")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NoYawControlStamped)))
  "Returns md5sum for a message object of type 'NoYawControlStamped"
  "466772a94931602dc602bc0ab3b45e59")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NoYawControlStamped>)))
  "Returns full string definition for message of type '<NoYawControlStamped>"
  (cl:format cl:nil "Header header~%NoYawControl control~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: crazyflie_msgs/NoYawControl~%float64 roll~%float64 pitch~%float64 thrust~%float64 priority~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NoYawControlStamped)))
  "Returns full string definition for message of type 'NoYawControlStamped"
  (cl:format cl:nil "Header header~%NoYawControl control~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: crazyflie_msgs/NoYawControl~%float64 roll~%float64 pitch~%float64 thrust~%float64 priority~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NoYawControlStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'control))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NoYawControlStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'NoYawControlStamped
    (cl:cons ':header (header msg))
    (cl:cons ':control (control msg))
))
