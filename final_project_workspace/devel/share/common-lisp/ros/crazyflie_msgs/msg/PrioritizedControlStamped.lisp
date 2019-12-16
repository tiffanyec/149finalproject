; Auto-generated. Do not edit!


(cl:in-package crazyflie_msgs-msg)


;//! \htmlinclude PrioritizedControlStamped.msg.html

(cl:defclass <PrioritizedControlStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (control
    :reader control
    :initarg :control
    :type crazyflie_msgs-msg:PrioritizedControl
    :initform (cl:make-instance 'crazyflie_msgs-msg:PrioritizedControl)))
)

(cl:defclass PrioritizedControlStamped (<PrioritizedControlStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PrioritizedControlStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PrioritizedControlStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name crazyflie_msgs-msg:<PrioritizedControlStamped> is deprecated: use crazyflie_msgs-msg:PrioritizedControlStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PrioritizedControlStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie_msgs-msg:header-val is deprecated.  Use crazyflie_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'control-val :lambda-list '(m))
(cl:defmethod control-val ((m <PrioritizedControlStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie_msgs-msg:control-val is deprecated.  Use crazyflie_msgs-msg:control instead.")
  (control m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PrioritizedControlStamped>) ostream)
  "Serializes a message object of type '<PrioritizedControlStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'control) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PrioritizedControlStamped>) istream)
  "Deserializes a message object of type '<PrioritizedControlStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'control) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PrioritizedControlStamped>)))
  "Returns string type for a message object of type '<PrioritizedControlStamped>"
  "crazyflie_msgs/PrioritizedControlStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PrioritizedControlStamped)))
  "Returns string type for a message object of type 'PrioritizedControlStamped"
  "crazyflie_msgs/PrioritizedControlStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PrioritizedControlStamped>)))
  "Returns md5sum for a message object of type '<PrioritizedControlStamped>"
  "283a1ef833d93b1cfda5ddc7601205cd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PrioritizedControlStamped)))
  "Returns md5sum for a message object of type 'PrioritizedControlStamped"
  "283a1ef833d93b1cfda5ddc7601205cd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PrioritizedControlStamped>)))
  "Returns full string definition for message of type '<PrioritizedControlStamped>"
  (cl:format cl:nil "Header header~%PrioritizedControl control~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: crazyflie_msgs/PrioritizedControl~%Control control~%float64 priority~%================================================================================~%MSG: crazyflie_msgs/Control~%float64 roll~%float64 pitch~%float64 yaw_dot~%float64 thrust~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PrioritizedControlStamped)))
  "Returns full string definition for message of type 'PrioritizedControlStamped"
  (cl:format cl:nil "Header header~%PrioritizedControl control~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: crazyflie_msgs/PrioritizedControl~%Control control~%float64 priority~%================================================================================~%MSG: crazyflie_msgs/Control~%float64 roll~%float64 pitch~%float64 yaw_dot~%float64 thrust~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PrioritizedControlStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'control))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PrioritizedControlStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'PrioritizedControlStamped
    (cl:cons ':header (header msg))
    (cl:cons ':control (control msg))
))
