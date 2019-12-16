;; Auto-generated. Do not edit!


(when (boundp 'crazyflie_msgs::FullStateStamped)
  (if (not (find-package "CRAZYFLIE_MSGS"))
    (make-package "CRAZYFLIE_MSGS"))
  (shadow 'FullStateStamped (find-package "CRAZYFLIE_MSGS")))
(unless (find-package "CRAZYFLIE_MSGS::FULLSTATESTAMPED")
  (make-package "CRAZYFLIE_MSGS::FULLSTATESTAMPED"))

(in-package "ROS")
;;//! \htmlinclude FullStateStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass crazyflie_msgs::FullStateStamped
  :super ros::object
  :slots (_header _state ))

(defmethod crazyflie_msgs::FullStateStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:state __state) (instance crazyflie_msgs::FullState :init))
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
    ;; crazyflie_msgs/FullState _state
    (send _state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; crazyflie_msgs/FullState _state
       (send _state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; crazyflie_msgs/FullState _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;;
   self)
  )

(setf (get crazyflie_msgs::FullStateStamped :md5sum-) "95ca4cda6afad75c125ca4a75fb052d8")
(setf (get crazyflie_msgs::FullStateStamped :datatype-) "crazyflie_msgs/FullStateStamped")
(setf (get crazyflie_msgs::FullStateStamped :definition-)
      "Header header
FullState state
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
MSG: crazyflie_msgs/FullState
float64 x
float64 y
float64 z
float64 x_dot
float64 y_dot
float64 z_dot
float64 roll
float64 pitch
float64 yaw
float64 roll_dot
float64 pitch_dot
float64 yaw_dot

")



(provide :crazyflie_msgs/FullStateStamped "95ca4cda6afad75c125ca4a75fb052d8")


