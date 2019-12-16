;; Auto-generated. Do not edit!


(when (boundp 'crazyflie_msgs::FullState)
  (if (not (find-package "CRAZYFLIE_MSGS"))
    (make-package "CRAZYFLIE_MSGS"))
  (shadow 'FullState (find-package "CRAZYFLIE_MSGS")))
(unless (find-package "CRAZYFLIE_MSGS::FULLSTATE")
  (make-package "CRAZYFLIE_MSGS::FULLSTATE"))

(in-package "ROS")
;;//! \htmlinclude FullState.msg.html


(defclass crazyflie_msgs::FullState
  :super ros::object
  :slots (_x _y _z _x_dot _y_dot _z_dot _roll _pitch _yaw _roll_dot _pitch_dot _yaw_dot ))

(defmethod crazyflie_msgs::FullState
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:x_dot __x_dot) 0.0)
    ((:y_dot __y_dot) 0.0)
    ((:z_dot __z_dot) 0.0)
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    ((:roll_dot __roll_dot) 0.0)
    ((:pitch_dot __pitch_dot) 0.0)
    ((:yaw_dot __yaw_dot) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _x_dot (float __x_dot))
   (setq _y_dot (float __y_dot))
   (setq _z_dot (float __z_dot))
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   (setq _roll_dot (float __roll_dot))
   (setq _pitch_dot (float __pitch_dot))
   (setq _yaw_dot (float __yaw_dot))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:x_dot
   (&optional __x_dot)
   (if __x_dot (setq _x_dot __x_dot)) _x_dot)
  (:y_dot
   (&optional __y_dot)
   (if __y_dot (setq _y_dot __y_dot)) _y_dot)
  (:z_dot
   (&optional __z_dot)
   (if __z_dot (setq _z_dot __z_dot)) _z_dot)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:roll_dot
   (&optional __roll_dot)
   (if __roll_dot (setq _roll_dot __roll_dot)) _roll_dot)
  (:pitch_dot
   (&optional __pitch_dot)
   (if __pitch_dot (setq _pitch_dot __pitch_dot)) _pitch_dot)
  (:yaw_dot
   (&optional __yaw_dot)
   (if __yaw_dot (setq _yaw_dot __yaw_dot)) _yaw_dot)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _x_dot
    8
    ;; float64 _y_dot
    8
    ;; float64 _z_dot
    8
    ;; float64 _roll
    8
    ;; float64 _pitch
    8
    ;; float64 _yaw
    8
    ;; float64 _roll_dot
    8
    ;; float64 _pitch_dot
    8
    ;; float64 _yaw_dot
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x_dot
       (sys::poke _x_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y_dot
       (sys::poke _y_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z_dot
       (sys::poke _z_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll_dot
       (sys::poke _roll_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch_dot
       (sys::poke _pitch_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_dot
       (sys::poke _yaw_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x_dot
     (setq _x_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y_dot
     (setq _y_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z_dot
     (setq _z_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll_dot
     (setq _roll_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch_dot
     (setq _pitch_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_dot
     (setq _yaw_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get crazyflie_msgs::FullState :md5sum-) "1478f01b4f726b5b1e488813cdcd71d7")
(setf (get crazyflie_msgs::FullState :datatype-) "crazyflie_msgs/FullState")
(setf (get crazyflie_msgs::FullState :definition-)
      "float64 x
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



(provide :crazyflie_msgs/FullState "1478f01b4f726b5b1e488813cdcd71d7")


