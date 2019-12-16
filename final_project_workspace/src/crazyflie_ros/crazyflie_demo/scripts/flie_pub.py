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

		self.posVelState = PositionVelocityState()
		self.posVelStateStamped = PositionVelocityStateStamped()
		self.delta = 0.3
		self.time = 2
		self.tolerance = 0.05
		self.isHovering = False

		# RCI Drone
		#TODO: TARGETS
		print("Constructing Improviser DFA... (may take a minute)")
		self.advPos = (5,5)
		self.targets = ((2,2), (2,4), (4,2), (4,4))
		self.rci_drone = RCIDrone(k=7, n=60, targets = self.targets, verbose = False, advPos=self.advPos)
		init_step = self.rci_drone.impro.send(None)[0]
		print("Initial move is: ", init_step)
		self.curr_pos = (0, 0)
		self.next_pos = tuple([self.dclamp(self.curr_pos[i]+init_step[i]) for i in range(2)])
		print("RCI DFA constructed!")

		print("Setting up ROS connections...")
		self.pub = rospy.Publisher('/ref', PositionVelocityStateStamped, queue_size=10)
		self.impro_pub = rospy.Publisher('/improviser', FlagPosition, queue_size=10)
		rospy.Subscriber('/vrpn_client_node/cf/pose', PoseStamped, self.fly)
		rospy.Subscriber('/in_flight', empty, self.up)
		rospy.Subscriber('/adversary', FlagPosition, self.adversaryListener)


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

		# Logging
		self.f_impro_real = open("/home/eecs149_rst/149finalproject/paths/impro_path_real.txt", 'w')
		self.f_impro_grid = open("/home/eecs149_rst/149finalproject/paths/imrpo_path_grid.txt", 'w')
		self.f_adv_grid = open("/home/eecs149_rst/149finalproject/paths/adv_path_grid.txt", 'w')

		self.f_impro_grid.write(str(self.curr_pos))

		print("Finished setting up improviser")


	def cclamp(self, x):
		return max(-0.9, min(0.9, x))

	def dclamp(self, x):
		return max(0, min(6, x))

	def d_to_c(self, x, y):
		ref_x = (x - 3)*self.delta
		ref_y = (y - 3)*self.delta
		return self.cclamp(ref_x), self.cclamp(ref_y)

	def c_to_d(self, x, y):
		ref_x = self.dclamp(int(round(x/self.delta) + 3))
		ref_y = self.dclamp(int(round(y/self.delta) + 3))
		# print(str(x) + ", " + str(y) + " => " + str(ref_x) + ", " + str(ref_y))
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


	def square_fly(self, msg):
		if self.isHovering:
			print(self.state)
			dronePos = msg.pose.position
			dronex = dronePos.x
			droney = dronePos.y
			dronez = dronePos.z
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
			# print("Current move: ", self.curr_move)
			if self.state == FLYING:
				dronePos = msg.pose.position
				dronex = dronePos.x
				droney = dronePos.y
				dronez = dronePos.z
				# print("Current position: ", self.curr_pos)
				# print("Moving drone to: (" + str(self.next_pos[0]) + ", " + str(self.next_pos[1]) + ")")
				arrived = self.flyToPlace(msg, *self.next_pos)
				self.f_impro_real.write(str((dronex,droney)))
				# print(arrived)
				if arrived:
					self.curr_pos = self.c_to_d(dronex,droney)
					# print("Arrived @ ", self.curr_pos)
					self.impro_pub.publish(FlagPosition(True, dronex, droney))
					self.state = WAITING
			elif self.state == WAITING:
				self.flyToPlace(msg, *self.curr_pos)

	def adversaryListener(self, msg):
		if msg.flag and self.state == WAITING:
			adversaryPosition = self.c_to_d(msg.x, msg.y)
			print("Improviser @: ", self.curr_pos)
			print("Adversary @: ", adversaryPosition)
			advMove = tuple((adversaryPosition[0] - self.advPos[0], adversaryPosition[1] - self.advPos[1]))
			self.advPos = adversaryPosition
			impro_step = self.rci_drone.impro.send(advMove)[0]
			print("Algo step: ", impro_step)
			
			self.next_pos = tuple([self.dclamp(self.curr_pos[i]+impro_step[i]) for i in range(2)])
			print("Next pos: ", self.next_pos)
			# print("New improviser position: ", self.curr_pos)
			self.f_impro_grid.write(str(self.curr_pos))
			self.f_adv_grid.write(str((msg.x, msg.y)))
			self.state = FLYING
			self.impro_pub.publish(FlagPosition(False, None, None))

	def flyToPlace(self, msg, grid_x, grid_y):
		# print("Flying to: ", (grid_x, grid_y))
		place_x, place_y = self.d_to_c(grid_x, grid_y)

		# print("Moving drone to: (" + str(place_x) + ", " + str(place_y) + ")" + " or (" + str(grid_x) + ", " + str(grid_y) + ")")
		dronePos = msg.pose.position
		dronex = dronePos.x
		droney = dronePos.y
		dronez = dronePos.z

		# print(str(self.c_to_d(dronex,droney)) + " => " + str((grid_x, grid_y)))

		self.posVelState.x = place_x
		self.posVelState.y = place_y
		self.posVelState.z = 1.5

		self.posVelState.x_dot = (place_x - dronex) / self.time
		self.posVelState.y_dot = (place_y - droney) / self.time
		self.posVelState.z_dot = 0.0

		self.posVelStateStamped.state = self.posVelState

		self.pub.publish(self.posVelStateStamped)

		return np.linalg.norm(np.array([dronex,droney]) - np.array([place_x, place_y])) <= self.tolerance



if __name__=='__main__':
	print("Making node")
	rospy.init_node("flierNode", anonymous=True)
	flier = Flier()
	try:
		print("Trying to hover")
		flier.hover()
	except Exception as e:
		print(str(e))
		print("Improviser whoops")
		if not flier.landed:
			flier.land()
			flier.f_impro_real.close()
			flier.f_impro_grid.close()
			flier.f_adv_grid.close()
