;; Auto-generated. Do not edit!


(when (boundp 'crazyflie_msgs::Control)
  (if (not (find-package "CRAZYFLIE_MSGS"))
    (make-package "CRAZYFLIE_MSGS"))
  (shadow 'Control (find-package "CRAZYFLIE_MSGS")))
(unless (find-package "CRAZYFLIE_MSGS::CONTROL")
  (make-package "CRAZYFLIE_MSGS::CONTROL"))

(in-package "ROS")
;;//! \htmlinclude Control.msg.html


(defclass crazyflie_msgs::Control
  :super ros::object
  :slots (_roll _pitch _yaw_dot _thrust ))

(defmethod crazyflie_msgs::Control
  (:init
   (&key
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw_dot __yaw_dot) 0.0)
    ((:thrust __thrust) 0.0)
    )
   (send-super :init)
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _yaw_dot (float __yaw_dot))
   (setq _thrust (float __thrust))
   self)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw_dot
   (&optional __yaw_dot)
   (if __yaw_dot (setq _yaw_dot __yaw_dot)) _yaw_dot)
  (:thrust
   (&optional __thrust)
   (if __thrust (setq _thrust __thrust)) _thrust)
  (:serialization-length
   ()
   (+
    ;; float64 _roll
    8
    ;; float64 _pitch
    8
    ;; float64 _yaw_dot
    8
    ;; float64 _thrust
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_dot
       (sys::poke _yaw_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _thrust
       (sys::poke _thrust (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_dot
     (setq _yaw_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _thrust
     (setq _thrust (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get crazyflie_msgs::Control :md5sum-) "e914b14edeed586f23e350ad344ba302")
(setf (get crazyflie_msgs::Control :datatype-) "crazyflie_msgs/Control")
(setf (get crazyflie_msgs::Control :definition-)
      "float64 roll
float64 pitch
float64 yaw_dot
float64 thrust
")



(provide :crazyflie_msgs/Control "e914b14edeed586f23e350ad344ba302")


