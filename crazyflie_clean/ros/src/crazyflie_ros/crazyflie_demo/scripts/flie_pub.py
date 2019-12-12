#!/usr/bin/env python

#Crazyflie publisher node

import rospy
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
		self.delta = 0.3    #TODO
		self.time = 2     #TODO
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
		flier.land()

	def fly(self, msg):
		print(msg.pose.position)
		# dronePos = msg.pose.position
		# dronex = dronePos.x
		# droney = dronePos.y
		# dronez = dronePos.z

		if self.isHovering:
			self.flyToPlace(msg, self.delta, self.delta)
			# if self.state == 1:

			# 	self.posVelState.x = self.delta
			# 	self.posVelState.y = self.delta
			# 	self.posVelState.z = 2.0

			# 	self.posVelState.x_dot = (self.delta - dronex) / self.time
			# 	self.posVelState.y_dot = (self.delta - droney) / self.time
			# 	self.posVelState.z_dot = 0.0

			# 	self.posVelStateStamped.state = self.posVelState

			# 	self.pub.publish(self.posVelStateStamped)
			# 	self.state = 2
			# 	rospy.sleep(20)
			# elif self.state == 2:
			# 	self.posVelState.x = 0.0
			# 	self.posVelState.y = 0.0
			# 	self.posVelState.z = 2.0

			# 	self.posVelState.x_dot = (0.0 - dronex) / self.time
			# 	self.posVelState.y_dot = (0.0 - droney) / self.time
			# 	self.posVelState.z_dot = 0.0

			# 	self.posVelStateStamped.state = self.posVelState

			# 	self.pub.publish(self.posVelStateStamped)

	def flyToPlace(self, msg, place_x, place_y):
		dronePos = msg.pose.position
		dronex = dronePos.x
		droney = dronePos.y
		dronez = dronePos.z

		self.posVelState.x = place_x
		self.posVelState.y = place_y
		self.posVelState.z = dronez

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
		pass
