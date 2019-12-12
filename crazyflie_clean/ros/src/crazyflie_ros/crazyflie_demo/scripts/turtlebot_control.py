#!/usr/bin/env python

import rospy
import tf2_ros
import sys

from geometry_msgs.msg import Twist, Vector3
from geometry_msgs.msg import PoseStamped
from geometry_msgs.msg import PoseStamped
from crazyflie_msgs.msg import FlagPosition

WAITING = 0
MOVING = 1

class Adversary():
    def __init__(self):
        rospy.Subscriber('/vrpn_client_node/adv/pose', PoseStamped, self.adv)
        rospy.Subscriber('/improviser', FlagPosition, self.improviserListener)
        self.pub = rospy.Publisher('mobile_base/commands/velocity', Twist, queue_size=10)
        self.adv_pub = rospy.Publisher('/adversary', FlagPosition, queue_size=10)

        # self.tfBuffer = tf2_ros.Buffer()
        # self.tfListener = tf2_ros.TransformListener(self.tfBuffer)

        self.state = WAITING

        self.r = rospy.Rate(10) # 10hz

        self.K1 = 0.3
        self.K2 = 1

        self.delta = 0.3
        self.tolerance = 0.5

        self.planner = self.loopAdv
        self.improPos = None

    def d_to_c(self, x, y):
        ref_x = (x - 3)*self.delta
        ref_y = (y - 3)*self.delta
        return ref_x, ref_y

    def c_to_d(self, x, y):
        return int(x/self.delta + 3), int(y/self.delta + 3)

    def adv(self, msg):
        if self.state == MOVING:
            advPos = self.c_to_d(msg.pose.position.x, msg.pose.position.y)
            des_x, des_y = self.d_to_c(self.planner(self.improPos, advPos))
            arrived = self.move(msg, des_x, des_y)
            if arrived:
                # TODO: Publish to topic (finished moving)
                pose = PoseStamped()
                pose.position.x = advPos[0]
                pose.position.y = advPos[1]
                self.impro_pub.publish(FlagPosition(True, pose))
                self.state = WAITING

    def move(self, msg, place_x, place_y):
        advPos = msg.pose.position
        advx = advPos.x
        advy = advPos.y
        advz = advPos.z

        control_command = Twist()
        control_command.linear.x = self.K1*place_x
        control_command.angular.z = self.K2*place_y
        self.pub.publish(control_command)

        return np.absolute(advx - place_x) <= self.tolerance and np.absolute(advy - place_y) <= self.tolerance

    def improviserListener(self, msg):
		if msg.flag and self.state == WAITING:
			self.improPos = self.c_to_d(msg.pose.position.x, msg.pose.position.y)
			self.state = MOVING
			self.impro_pub.publish(FlagPosition(False, None))


    def run(self):
        while not rospy.is_shutdown():
            rospy.spin()

    def loopAdv(self, improPos, advPos):
        lb = 1
        hb = 5
        advx,advy = advPos
        if advx == lb:
            return (advx+1, advy) if y == hb else (advx, advy+1)
        elif advx == hb:
            return (advx-1, advy) if y == lb else (advx, advy-1)
        elif advy == lb:
            return (advx-1, advy)
        elif advy == hb:
            return (advx + 1, advy)
        else:
            assert 0


if __name__ == '__main__':
    rospy.init_node('adversary_controller', anonymous=True)

    try:
        # controller(sys.argv[1], sys.argv[2])
        tb = Adversary()
        tb.run()
    except:
        print("whoops")
        pass
