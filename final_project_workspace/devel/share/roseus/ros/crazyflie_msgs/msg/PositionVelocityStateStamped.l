;; Auto-generated. Do not edit!


(when (boundp 'crazyflie_msgs::PositionVelocityStateStamped)
  (if (not (find-package "CRAZYFLIE_MSGS"))
    (make-package "CRAZYFLIE_MSGS"))
  (shadow 'PositionVelocityStateStamped (find-package "CRAZYFLIE_MSGS")))
(unless (find-package "CRAZYFLIE_MSGS::POSITIONVELOCITYSTATESTAMPED")
  (make-package "CRAZYFLIE_MSGS::POSITIONVELOCITYSTATESTAMPED"))

(in-package "ROS")
;;//! \htmlinclude PositionVelocityStateStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass crazyflie_msgs::PositionVelocityStateStamped
  :super ros::object
  :slots (_header _state ))

(defmethod crazyflie_msgs::PositionVelocityStateStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:state __state) (instance crazyflie_msgs::PositionVelocityState :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _state __state)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; crazyflie_msgs/PositionVelocityState _state
    (send _state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; crazyflie_msgs/PositionVelocityState _state
       (send _state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; crazyflie_msgs/PositionVelocityState _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;;
   self)
  )

(setf (get crazyflie_msgs::PositionVelocityStateStamped :md5sum-) "d7e2e75df27e542774773e0a516e76ff")
(setf (get crazyflie_msgs::PositionVelocityStateStamped :datatype-) "crazyflie_msgs/PositionVelocityStateStamped")
(setf (get crazyflie_msgs::PositionVelocityStateStamped :definition-)
      "Header header
PositionVelocityState state
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: crazyflie_msgs/PositionVelocityState
float64 x
float64 y
float64 z
float64 x_dot
float64 y_dot
float64 z_dot
")



(provide :crazyflie_msgs/PositionVelocityStateStamped "d7e2e75df27e542774773e0a516e76ff")


