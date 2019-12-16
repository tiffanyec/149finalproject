;; Auto-generated. Do not edit!


(when (boundp 'crazyflie_msgs::PrioritizedControlStamped)
  (if (not (find-package "CRAZYFLIE_MSGS"))
    (make-package "CRAZYFLIE_MSGS"))
  (shadow 'PrioritizedControlStamped (find-package "CRAZYFLIE_MSGS")))
(unless (find-package "CRAZYFLIE_MSGS::PRIORITIZEDCONTROLSTAMPED")
  (make-package "CRAZYFLIE_MSGS::PRIORITIZEDCONTROLSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude PrioritizedControlStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass crazyflie_msgs::PrioritizedControlStamped
  :super ros::object
  :slots (_header _control ))

(defmethod crazyflie_msgs::PrioritizedControlStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:control __control) (instance crazyflie_msgs::PrioritizedControl :init))
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
    ;; crazyflie_msgs/PrioritizedControl _control
    (send _control :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; crazyflie_msgs/PrioritizedControl _control
       (send _control :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; crazyflie_msgs/PrioritizedControl _control
     (send _control :deserialize buf ptr-) (incf ptr- (send _control :serialization-length))
   ;;
   self)
  )

(setf (get crazyflie_msgs::PrioritizedControlStamped :md5sum-) "283a1ef833d93b1cfda5ddc7601205cd")
(setf (get crazyflie_msgs::PrioritizedControlStamped :datatype-) "crazyflie_msgs/PrioritizedControlStamped")
(setf (get crazyflie_msgs::PrioritizedControlStamped :definition-)
      "Header header
PrioritizedControl control
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
MSG: crazyflie_msgs/PrioritizedControl
Control control
float64 priority
================================================================================
MSG: crazyflie_msgs/Control
float64 roll
float64 pitch
float64 yaw_dot
float64 thrust
")



(provide :crazyflie_msgs/PrioritizedControlStamped "283a1ef833d93b1cfda5ddc7601205cd")


