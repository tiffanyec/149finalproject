;; Auto-generated. Do not edit!


(when (boundp 'crazyflie_msgs::NoYawControl)
  (if (not (find-package "CRAZYFLIE_MSGS"))
    (make-package "CRAZYFLIE_MSGS"))
  (shadow 'NoYawControl (find-package "CRAZYFLIE_MSGS")))
(unless (find-package "CRAZYFLIE_MSGS::NOYAWCONTROL")
  (make-package "CRAZYFLIE_MSGS::NOYAWCONTROL"))

(in-package "ROS")
;;//! \htmlinclude NoYawControl.msg.html


(defclass crazyflie_msgs::NoYawControl
  :super ros::object
  :slots (_roll _pitch _thrust _priority ))

(defmethod crazyflie_msgs::NoYawControl
  (:init
   (&key
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:thrust __thrust) 0.0)
    ((:priority __priority) 0.0)
    )
   (send-super :init)
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _thrust (float __thrust))
   (setq _priority (float __priority))
   self)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:thrust
   (&optional __thrust)
   (if __thrust (setq _thrust __thrust)) _thrust)
  (:priority
   (&optional __priority)
   (if __priority (setq _priority __priority)) _priority)
  (:serialization-length
   ()
   (+
    ;; float64 _roll
    8
    ;; float64 _pitch
    8
    ;; float64 _thrust
    8
    ;; float64 _priority
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
     ;; float64 _thrust
       (sys::poke _thrust (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _priority
       (sys::poke _priority (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _thrust
     (setq _thrust (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _priority
     (setq _priority (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get crazyflie_msgs::NoYawControl :md5sum-) "47183c443d602278cf66b107317355b1")
(setf (get crazyflie_msgs::NoYawControl :datatype-) "crazyflie_msgs/NoYawControl")
(setf (get crazyflie_msgs::NoYawControl :definition-)
      "float64 roll
float64 pitch
float64 thrust
float64 priority
")



(provide :crazyflie_msgs/NoYawControl "47183c443d602278cf66b107317355b1")


