#!/usr/bin/env python

import rospy
import sys
import tf.transformations as tr
from tf.transformations import euler_from_quaternion

from geometry_msgs.msg import Twist, Vector3
from geometry_msgs.msg import PoseStamped
from geometry_msgs.msg import PoseStamped
from crazyflie_msgs.msg import FlagPosition

import numpy as np
import time

WAITING = 0
MOVING = 1
ROTATING = 2


class Adversary():
    def __init__(self):
        print("Setting up turtle...")
        rospy.Subscriber('/vrpn_client_node/adv/pose', PoseStamped, self.adv)
        rospy.Subscriber('/improviser', FlagPosition, self.improviserListener)
        self.pub = rospy.Publisher('/blue/mobile_base/commands/velocity', Twist, queue_size=10)
        self.adv_pub = rospy.Publisher('/adversary', FlagPosition, queue_size=10)

        # self.tfBuffer = tf2_ros.Buffer()
        # self.tfListener = tf2_ros.TransformListener(self.tfBuffer)

        self.state = WAITING
        # self.simulated = True
        self.curPos = (5,5)
        self.k = 7

        self.r = rospy.Rate(10) # 10hz

        # self.K1 = 0.3
        # self.K2 = 1

        self.delta = 0.3
        self.move_tolerance = 0.01
        self.rotate_tolerance = 0.01

        self.planner = self.loopAdv
        self.improPos = None

        self.loop_state = "down"

        self.des_x = None
        self.des_y = None
        self.orientation = 0.0

        self.move_rotations = { (0, 1): 0.0, (0,-1): np.pi, (1,0): -np.pi/2, (-1,0): np.pi/2 }

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

        adv_pos = self.c_to_d(msg.pose.position.x, msg.pose.position.y)
        if self.state == ROTATING:
            print("Rotating...")
            arrived = self.rotate(msg, self.des_x, self.des_y)
            # arrived = False
            if arrived:
                print("Finished rotating!")
                self.state = MOVING

        if self.state == MOVING:
            print("Moving...")
            arrived = self.move(msg, self.des_x, self.des_y)
            if arrived:
                print("Finished moving!")
                self.adv_pub.publish(FlagPosition(True, adv_pos[0], adv_pos[1]))
                self.state = WAITING
                self.curPos = adv_pos

        
    def move(self, msg, grid_x, grid_y):

        p, q = self.pose_to_pq(msg.pose)

        g = tr.quaternion_matrix(q)
        g[0:3, -1] = p

        g2 = np.eye(4)
        g2[0:3,-1] = np.array([-0.025,0.0,0.0])

        g_wt = np.dot(g, g2)
        # curr_x, curr_y = res[0:2,-1]

        place_x, place_y = self.d_to_c(grid_x, grid_y)
        g_gt = np.dot(np.linalg.inv(g_wt), np.array([place_x, place_y, 0, 1]))

        control_command = Twist()
        control_command.linear.x = max(min(0.5*g_gt[0], 0.5), 0.1)
        self.pub.publish(control_command)

        return g_gt[0] <= self.move_tolerance

    def rotate(self, msg, grid_x, grid_y):
        p, q = self.pose_to_pq(msg.pose)

        g = tr.quaternion_matrix(q)
        g[0:3, -1] = p

        g2 = np.eye(4)
        g2[0:3,-1] = np.array([-0.025,0.0,0.0])

        res = np.dot(g, g2)
        curr_x, curr_y = res[0:2,-1]

        roll, pitch, yaw = euler_from_quaternion(q)
        # print(msg.pose.position.x, msg.pose.position.y)
        # curr_x, curr_y = self.c_to_d(msg.pose.position.x, msg.pose.position.y)
        des_x, des_y = self.d_to_c(grid_x, grid_y)
        print("Current pos: ", curr_x, curr_y)
        print("Destination pos: ", des_x, des_y)
        des_angle = np.arctan2(des_y - curr_y, des_x - curr_x)

        control_command = Twist()
        angle1 = des_angle + np.pi
        angle2 = yaw+np.pi
        # print((angle1-angle2)%(2*np.pi))
        if ((angle1-angle2)%(2*np.pi) > (angle2-angle1)%(2*np.pi)):
            direction = -1
        else:
            direction = 1
        control_command.angular.z = direction*max(0.5, min(0.5*(np.abs(des_angle-yaw)), 0.8))

        # print("Current angle: " + str(yaw))
        # print("Destination angle: " + str(des_angle))
        self.pub.publish(control_command)
        return np.abs(des_angle - yaw) <= self.rotate_tolerance
        # return

    
    def improviserListener(self, msg):
        # print(msg)
        if msg.flag and self.state == WAITING:
            self.improPos = self.c_to_d(msg.x, msg.y)
            self.state = ROTATING
            self.des_x, self.des_y = self.planner(self.improPos, self.curPos)
            print(self.des_x, self.des_y)
            self.adv_pub.publish(FlagPosition(False, None,None))


    def run(self):
        while not rospy.is_shutdown():
            rospy.spin()

    def loopAdv(self, improPos, advPos):

        advx,advy = advPos

        if advPos == (5,1):
            self.loop_state = 'right'
        elif advPos == (5,5):
            self.loop_state = 'down'
        elif advPos == (1,5):
            self.loop_state = 'left'
        elif advPos == (1,1):
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
