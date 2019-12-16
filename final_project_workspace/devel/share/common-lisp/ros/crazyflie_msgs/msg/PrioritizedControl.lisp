; Auto-generated. Do not edit!


(cl:in-package crazyflie_msgs-msg)


;//! \htmlinclude PrioritizedControl.msg.html

(cl:defclass <PrioritizedControl> (roslisp-msg-protocol:ros-message)
  ((control
    :reader control
    :initarg :control
    :type crazyflie_msgs-msg:Control
    :initform (cl:make-instance 'crazyflie_msgs-msg:Control))
   (priority
    :reader priority
    :initarg :priority
    :type cl:float
    :initform 0.0))
)

(cl:defclass PrioritizedControl (<PrioritizedControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PrioritizedControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PrioritizedControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name crazyflie_msgs-msg:<PrioritizedControl> is deprecated: use crazyflie_msgs-msg:PrioritizedControl instead.")))

(cl:ensure-generic-function 'control-val :lambda-list '(m))
(cl:defmethod control-val ((m <PrioritizedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie_msgs-msg:control-val is deprecated.  Use crazyflie_msgs-msg:control instead.")
  (control m))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <PrioritizedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie_msgs-msg:priority-val is deprecated.  Use crazyflie_msgs-msg:priority instead.")
  (priority m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PrioritizedControl>) ostream)
  "Serializes a message object of type '<PrioritizedControl>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'control) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'priority))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PrioritizedControl>) istream)
  "Deserializes a message object of type '<PrioritizedControl>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'control) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'priority) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PrioritizedControl>)))
  "Returns string type for a message object of type '<PrioritizedControl>"
  "crazyflie_msgs/PrioritizedControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PrioritizedControl)))
  "Returns string type for a message object of type 'PrioritizedControl"
  "crazyflie_msgs/PrioritizedControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PrioritizedControl>)))
  "Returns md5sum for a message object of type '<PrioritizedControl>"
  "6383d540d010819be07756f19814ef1f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PrioritizedControl)))
  "Returns md5sum for a message object of type 'PrioritizedControl"
  "6383d540d010819be07756f19814ef1f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PrioritizedControl>)))
  "Returns full string definition for message of type '<PrioritizedControl>"
  (cl:format cl:nil "Control control~%float64 priority~%================================================================================~%MSG: crazyflie_msgs/Control~%float64 roll~%float64 pitch~%float64 yaw_dot~%float64 thrust~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PrioritizedControl)))
  "Returns full string definition for message of type 'PrioritizedControl"
  (cl:format cl:nil "Control control~%float64 priority~%================================================================================~%MSG: crazyflie_msgs/Control~%float64 roll~%float64 pitch~%float64 yaw_dot~%float64 thrust~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PrioritizedControl>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'control))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PrioritizedControl>))
  "Converts a ROS message object to a list"
  (cl:list 'PrioritizedControl
    (cl:cons ':control (control msg))
    (cl:cons ':priority (priority msg))
))
