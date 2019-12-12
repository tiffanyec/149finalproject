#!/usr/bin/env python

#Crazyflie publisher node

import rospy
import numpy as np
from crazyflie_msgs.msg import PositionVelocityState
from crazyflie_msgs.msg import PositionVelocityStateStamped
from geometry_msgs.msg import PoseStamped
from crazyflie_msgs.msg import FlagPosition
from std_srvs.srv import Empty
from std_msgs.msg import Empty as empty
from RCIDrone import RCIDrone

FLYING = 1
WAITING = 2

class Flier():
	"""docstring for Flier"""
	def __init__(self):
		self.pub = rospy.Publisher('/ref', PositionVelocityStateStamped, queue_size=10)
		self.impro_pub = rospy.Publisher('/improviser', FlagPosition, queue_size=10)
		rospy.Subscriber('/vrpn_client_node/cf/pose', PoseStamped, self.fly)
		rospy.Subscriber('/in_flight', empty, self.up)
		rospy.Subscriber('/adversary', FlagPosition, self.adversaryListener)

		self.posVelState = PositionVelocityState()
		self.posVelStateStamped = PositionVelocityStateStamped()
		self.delta = 0.3
		self.time = 2
		self.tolerance = 0.05
		self.isHovering = False

		# RCI Drone
		#TODO: TARGETS
		self.rci_drone = RCIDrone(k=7, n=60, targets = targets, verbose = False)
		self.current_move = self.rci_drone.impro.send(None)
		self.advPrev = None

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

	def d_to_c(self, x, y):
		ref_x = (x - 3)*self.delta
		ref_y = (y - 3)*self.delta
		return ref_x, ref_y

	def c_to_d(self, x, y):
		return int(x/self.delta + 3), int(y/self.delta + 3)

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


	def square_fly(self, msg):
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
				arrived = self.flyToPlace(msg, des_x, des_y)
				if arrived:
					self.state = 2

			elif self.state == 2:
				des_x, des_y = -3*self.delta, 3*self.delta
				arrived = self.flyToPlace(msg, des_x, des_y)
				if arrived:
					self.state = 3

			elif self.state == 3:
				des_x, des_y = -3*self.delta, -3*self.delta
				arrived = self.flyToPlace(msg, des_x, des_y)
				if arrived:
					self.state = 4

			elif self.state == 4:
				des_x, des_y = 3*self.delta, -3*self.delta
				self.flyToPlace(msg, des_x, des_y)
				if arrived:
					self.state = 1

			print(msg.pose.position.x, msg.pose.position.y)

	def fly(self, msg):

		if self.isHovering:
			if self.state == FLYING:

				dronePos = msg.pose.position
				dronex = dronePos.x
				droney = dronePos.y
				dronez = dronePos.z
				print(msg.pose.position.x, msg.pose.position.y)

				des_x = self.current_move[0] + dronex
				des_y = self.current_move[1] + droney
				arrived = self.flyToPlace(msg, des_x, des_y)
				if arrived:
        			# TODO: Publish to topic (finished moving)
					pose = PoseStamped()
					pose.position.x = dronex
					pose.position.y = droney
					self.impro_pub.publish(FlagPosition(True, pose))
					self.state = WAITING

	def adversaryListener(self, msg):
		if msg.flag and self.state == WAITING:
			adversaryPosition = self.c_to_d(msg.pose.position.x, msg.pose.position.y)
			advMove = tuple(advPrev[0] - adversaryPosition[0], advPrev[1] - advPrev[1])
			self.advPrev = adversaryPosition
			self.current_move = self.d_to_c(self.rci_drone.impro.send(advMove))
			self.state = FLYING
			self.impro_pub.publish(FlagPosition(False, None))

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

		return np.absolute(dronex - place_x) <= self.tolerance and np.absolute(droney - place_y) <= self.tolerance



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
