#!/usr/bin/env python

#Crazyflie publisher node

import rospy
import numpy as np
from crazyflie_msgs.msg import PositionVelocityState
from crazyflie_msgs.msg import PositionVelocityStateStamped
from geometry_msgs.msg import PoseStamped
from std_srvs.srv import Empty
from std_msgs.msg import Empty as empty

class Flier():
	"""docstring for Flier"""
	def __init__(self):
		self.pub = rospy.Publisher('/ref', PositionVelocityStateStamped, queue_size=10)
		rospy.Subscriber('/vrpn_client_node/cf/pose', PoseStamped, self.fly)
		rospy.Subscriber('/in_flight', empty, self.up)

		self.posVelState = PositionVelocityState()
		self.posVelStateStamped = PositionVelocityStateStamped()
		self.delta = 0.3    
		self.time = 2     
		self.tolerance = 0.05
		self.isHovering = False

		rospy.loginfo("waiting for land service")
		rospy.wait_for_service('/land')
		rospy.loginfo("found land service")
		self.land = rospy.ServiceProxy('/land', Empty)

		rospy.loginfo("waiting for takeoff service")
		rospy.wait_for_service('/takeoff')
		rospy.loginfo("found takeoff service")
		self.takeoff = rospy.ServiceProxy('/takeoff', Empty)

		self.state = 0
		self.landed = False

	def findPoint(self, x, y):
		ref_x = (x - 3)*self.delta
		ref_y = (y - 3)*self.delta
		return ref_x, ref_y

	def up(self, msg):
		print("hovering")
		self.isHovering = True

	def hover(self):

		while not rospy.is_shutdown():
			if self.state == 0:
				print("Taking off")
				self.takeoff()
				self.state = 1

			rospy.spin()
		self.landed = True
		flier.land()
		

	def fly(self, msg):
		# print(msg.pose.position)

		if self.isHovering:
			print(self.state)
			dronePos = msg.pose.position
			dronex = dronePos.x
			droney = dronePos.y
			dronez = dronePos.z
			print(msg.pose.position.x, msg.pose.position.y)
			# rospy.sleep(5)
			if self.state == 1:
				des_x, des_y = 3*self.delta, 3*self.delta
				self.flyToPlace(msg, des_x, des_y)
				if np.absolute(dronex - des_x) <= self.tolerance and np.absolute(droney - des_y) <= self.tolerance:
					self.state = 2

				print(msg.pose.position.x, msg.pose.position.y)
				# rospy.sleep(5)

			elif self.state == 2:
				des_x, des_y = -3*self.delta, 3*self.delta
				self.flyToPlace(msg, des_x, des_y)
				if np.absolute(dronex - des_x) <= self.tolerance and np.absolute(droney - des_y) <= self.tolerance:
					self.state = 3
				print(msg.pose.position.x, msg.pose.position.y)
				# rospy.sleep(5)

			elif self.state == 3:
				des_x, des_y = -3*self.delta, -3*self.delta
				self.flyToPlace(msg, des_x, des_y)
				if np.absolute(dronex - des_x) <= self.tolerance and np.absolute(droney - des_y) <= self.tolerance:
					self.state = 4
				print(msg.pose.position.x, msg.pose.position.y)
				# rospy.sleep(5)

			elif self.state == 4:
				des_x, des_y = 3*self.delta, -3*self.delta
				self.flyToPlace(msg, des_x, des_y)
				if np.absolute(dronex - des_x) <= self.tolerance and np.absolute(droney - des_y) <= self.tolerance:
					self.state = 1
				print(msg.pose.position.x, msg.pose.position.y)
				# rospy.sleep(5)
			

	def flyToPlace(self, msg, place_x, place_y):
		dronePos = msg.pose.position
		dronex = dronePos.x
		droney = dronePos.y
		dronez = dronePos.z

		self.posVelState.x = place_x
		self.posVelState.y = place_y
		self.posVelState.z = 1.5

		self.posVelState.x_dot = (place_x - dronex) / self.time
		self.posVelState.y_dot = (place_y - droney) / self.time
		self.posVelState.z_dot = 0.0

		self.posVelStateStamped.state = self.posVelState

		self.pub.publish(self.posVelStateStamped)



if __name__=='__main__':
	print("Making node")
	rospy.init_node("flierNode", anonymous=True)
	flier = Flier()
	try:
		print("Trying to hover")
		flier.hover()
	except:
		print("whoops")
		if not flier.landed:
			flier.land()
