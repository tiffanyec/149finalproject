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
        print("Setting up adversary...")
        rospy.Subscriber('/vrpn_client_node/adv/pose', PoseStamped, self.adv)
        rospy.Subscriber('/improviser', FlagPosition, self.improviserListener)
        self.pub = rospy.Publisher('mobile_base/commands/velocity', Twist, queue_size=10)
        self.adv_pub = rospy.Publisher('/adversary', FlagPosition, queue_size=10)

        # self.tfBuffer = tf2_ros.Buffer()
        # self.tfListener = tf2_ros.TransformListener(self.tfBuffer)

        self.state = WAITING
        self.simulated = True
        self.curPos = (5,5)
        self.k = 7

        self.r = rospy.Rate(10) # 10hz

        self.K1 = 0.3
        self.K2 = 1

        self.delta = 0.3
        self.tolerance = 0.5

        self.planner = self.loopAdv
        self.improPos = None

        self.loop_state = "down"

        if self.simulated:
            while not rospy.is_shutdown():
                if self.state == MOVING:
                    print("Adversary moving...")
                    self.curPos = self.planner(self.improPos, self.curPos)
                    # print("Adversary move: ", advMove)
                    #  = tuple([self.curPos[0] + advMove[0], self.curPos[1] + advMove[1]])
                    # print("Adversary position: ", self.curPos)
                    new_x, new_y = self.d_to_c(*self.curPos)
                    # print("Continuous position", (new_x, new_y))
                    rospy.sleep(3)
                    self.adv_pub.publish(FlagPosition(True, new_x, new_y))
                    # print("Adversary move complete!")
                    self.state = WAITING


    def pose_to_pq(self, msg):
        p = np.array([msg.position.x, msg.position.y, msg.position.z])
        q = np.array([msg.orientation.x, msg.orientation.y, msg.orientation.z, msg.orientation.w])

        return p, q


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

    def adv(self, msg):
        if self.state == MOVING:
            print("Adversary moving...")
            if not self.simulated:  
                advPos = self.c_to_d(msg.x, msg.y)
                des_x, des_y = self.d_to_c(self.planner(self.improPos, advPos))
                arrived = self.move(msg, des_x, des_y)
                if arrived:
                    self.impro_pub.publish(FlagPosition(True, advPos[0], advPos[1]))
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
        # print(msg)
        if msg.flag and self.state == WAITING:
			self.improPos = self.c_to_d(msg.x, msg.y)
			self.state = MOVING
			self.adv_pub.publish(FlagPosition(False, None,None))


    def run(self):
        while not rospy.is_shutdown():
            rospy.spin()

    def loopAdv(self, improPos, advPos):
        lb = 2
        hb = 5

        advx,advy = advPos

        if advPos == (5,2):
            self.loop_state = 'right'
        elif advPos == (5,5):
            self.loop_state = 'down'
        elif advPos == (2,5):
            self.loop_state = 'left'
        elif advPos == (2,2):
            self.loop_state = 'up'

        print(self.loop_state)
        
        if self.loop_state == 'down':
            return (advx, advy-1)
        elif self.loop_state == 'left':
            return (advx+1, advy)
        elif self.loop_state == 'up':
            return (advx, advy+1)
        elif self.loop_state == 'right':
            return (advx-1, advy)
        # if advx == lb:
        #     return (advx+1, advy) if advy == hb else (advx, advy+1)
        # elif advx == hb:
        #     return (advx-1, advy) if advy == lb else (advx, advy-1)
        # elif advy == lb:
        #     return (advx-1, advy)
        # elif advy == hb:
        #     return (advx + 1, advy)
        else:
            print("Uh oh should not be here in loop adv")


if __name__ == '__main__':
    rospy.init_node('adversary_controller', anonymous=True)

    try:
        # controller(sys.argv[1], sys.argv[2])
        tb = Adversary()
        tb.run()
    except Exception as e:
        print(e)
        print("Adversary whoops")
        pass
