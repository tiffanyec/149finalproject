;; Auto-generated. Do not edit!


(when (boundp 'crazyflie_msgs::PositionVelocityState)
  (if (not (find-package "CRAZYFLIE_MSGS"))
    (make-package "CRAZYFLIE_MSGS"))
  (shadow 'PositionVelocityState (find-package "CRAZYFLIE_MSGS")))
(unless (find-package "CRAZYFLIE_MSGS::POSITIONVELOCITYSTATE")
  (make-package "CRAZYFLIE_MSGS::POSITIONVELOCITYSTATE"))

(in-package "ROS")
;;//! \htmlinclude PositionVelocityState.msg.html


(defclass crazyflie_msgs::PositionVelocityState
  :super ros::object
  :slots (_x _y _z _x_dot _y_dot _z_dot ))

(defmethod crazyflie_msgs::PositionVelocityState
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:x_dot __x_dot) 0.0)
    ((:y_dot __y_dot) 0.0)
    ((:z_dot __z_dot) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _x_dot (float __x_dot))
   (setq _y_dot (float __y_dot))
   (setq _z_dot (float __z_dot))
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
   ;;
   self)
  )

(setf (get crazyflie_msgs::PositionVelocityState :md5sum-) "c9b55cbacbaa7251ae99292a70935fa6")
(setf (get crazyflie_msgs::PositionVelocityState :datatype-) "crazyflie_msgs/PositionVelocityState")
(setf (get crazyflie_msgs::PositionVelocityState :definition-)
      "float64 x
float64 y
float64 z
float64 x_dot
float64 y_dot
float64 z_dot
")



(provide :crazyflie_msgs/PositionVelocityState "c9b55cbacbaa7251ae99292a70935fa6")


