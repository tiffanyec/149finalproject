;; Auto-generated. Do not edit!


(when (boundp 'crazyflie_msgs::FlagPosition)
  (if (not (find-package "CRAZYFLIE_MSGS"))
    (make-package "CRAZYFLIE_MSGS"))
  (shadow 'FlagPosition (find-package "CRAZYFLIE_MSGS")))
(unless (find-package "CRAZYFLIE_MSGS::FLAGPOSITION")
  (make-package "CRAZYFLIE_MSGS::FLAGPOSITION"))

(in-package "ROS")
;;//! \htmlinclude FlagPosition.msg.html


(defclass crazyflie_msgs::FlagPosition
  :super ros::object
  :slots (_flag _x _y ))

(defmethod crazyflie_msgs::FlagPosition
  (:init
   (&key
    ((:flag __flag) nil)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _flag __flag)
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; bool _flag
    1
    ;; float64 _x
    8
    ;; float64 _y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _flag
       (if _flag (write-byte -1 s) (write-byte 0 s))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _flag
     (setq _flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get crazyflie_msgs::FlagPosition :md5sum-) "b02003392a7ba348a106356014b2f67a")
(setf (get crazyflie_msgs::FlagPosition :datatype-) "crazyflie_msgs/FlagPosition")
(setf (get crazyflie_msgs::FlagPosition :definition-)
      "bool flag
float64 x
float64 y

")



(provide :crazyflie_msgs/FlagPosition "b02003392a7ba348a106356014b2f67a")


