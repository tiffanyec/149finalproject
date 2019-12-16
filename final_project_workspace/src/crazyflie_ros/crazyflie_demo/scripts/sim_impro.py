import rospy
import numpy as np
from crazyflie_msgs.msg import PositionVelocityState
from crazyflie_msgs.msg import PositionVelocityStateStamped
from geometry_msgs.msg import PoseStamped
from crazyflie_msgs.msg import FlagPosition

rospy.init_node("simpro", anonymous=True)
impro_pub = rospy.Publisher('/improviser', FlagPosition, queue_size=10)

while not rospy.is_shutdown():
	x = raw_input()
	print(x)
	impro_pub.publish(FlagPosition(True, 0, 0))
