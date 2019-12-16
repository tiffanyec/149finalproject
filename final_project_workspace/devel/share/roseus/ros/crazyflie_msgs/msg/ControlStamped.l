;; Auto-generated. Do not edit!


(when (boundp 'crazyflie_msgs::ControlStamped)
  (if (not (find-package "CRAZYFLIE_MSGS"))
    (make-package "CRAZYFLIE_MSGS"))
  (shadow 'ControlStamped (find-package "CRAZYFLIE_MSGS")))
(unless (find-package "CRAZYFLIE_MSGS::CONTROLSTAMPED")
  (make-package "CRAZYFLIE_MSGS::CONTROLSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude ControlStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass crazyflie_msgs::ControlStamped
  :super ros::object
  :slots (_header _control ))

(defmethod crazyflie_msgs::ControlStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:control __control) (instance crazyflie_msgs::Control :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _control __control)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:control
   (&rest __control)
   (if (keywordp (car __control))
       (send* _control __control)
     (progn
       (if __control (setq _control (car __control)))
       _control)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; crazyflie_msgs/Control _control
    (send _control :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; crazyflie_msgs/Control _control
       (send _control :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; crazyflie_msgs/Control _control
     (send _control :deserialize buf ptr-) (incf ptr- (send _control :serialization-length))
   ;;
   self)
  )

(setf (get crazyflie_msgs::ControlStamped :md5sum-) "e85f24c467a6496a2e0c3b92ff0fe75d")
(setf (get crazyflie_msgs::ControlStamped :datatype-) "crazyflie_msgs/ControlStamped")
(setf (get crazyflie_msgs::ControlStamped :definition-)
      "Header header
Control control
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
MSG: crazyflie_msgs/Control
float64 roll
float64 pitch
float64 yaw_dot
float64 thrust
")



(provide :crazyflie_msgs/ControlStamped "e85f24c467a6496a2e0c3b92ff0fe75d")


