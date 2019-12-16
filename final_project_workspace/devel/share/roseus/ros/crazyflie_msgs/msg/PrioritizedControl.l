;; Auto-generated. Do not edit!


(when (boundp 'crazyflie_msgs::PrioritizedControl)
  (if (not (find-package "CRAZYFLIE_MSGS"))
    (make-package "CRAZYFLIE_MSGS"))
  (shadow 'PrioritizedControl (find-package "CRAZYFLIE_MSGS")))
(unless (find-package "CRAZYFLIE_MSGS::PRIORITIZEDCONTROL")
  (make-package "CRAZYFLIE_MSGS::PRIORITIZEDCONTROL"))

(in-package "ROS")
;;//! \htmlinclude PrioritizedControl.msg.html


(defclass crazyflie_msgs::PrioritizedControl
  :super ros::object
  :slots (_control _priority ))

(defmethod crazyflie_msgs::PrioritizedControl
  (:init
   (&key
    ((:control __control) (instance crazyflie_msgs::Control :init))
    ((:priority __priority) 0.0)
    )
   (send-super :init)
   (setq _control __control)
   (setq _priority (float __priority))
   self)
  (:control
   (&rest __control)
   (if (keywordp (car __control))
       (send* _control __control)
     (progn
       (if __control (setq _control (car __control)))
       _control)))
  (:priority
   (&optional __priority)
   (if __priority (setq _priority __priority)) _priority)
  (:serialization-length
   ()
   (+
    ;; crazyflie_msgs/Control _control
    (send _control :serialization-length)
    ;; float64 _priority
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; crazyflie_msgs/Control _control
       (send _control :serialize s)
     ;; float64 _priority
       (sys::poke _priority (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; crazyflie_msgs/Control _control
     (send _control :deserialize buf ptr-) (incf ptr- (send _control :serialization-length))
   ;; float64 _priority
     (setq _priority (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get crazyflie_msgs::PrioritizedControl :md5sum-) "6383d540d010819be07756f19814ef1f")
(setf (get crazyflie_msgs::PrioritizedControl :datatype-) "crazyflie_msgs/PrioritizedControl")
(setf (get crazyflie_msgs::PrioritizedControl :definition-)
      "Control control
float64 priority
================================================================================
MSG: crazyflie_msgs/Control
float64 roll
float64 pitch
float64 yaw_dot
float64 thrust
")



(provide :crazyflie_msgs/PrioritizedControl "6383d540d010819be07756f19814ef1f")


