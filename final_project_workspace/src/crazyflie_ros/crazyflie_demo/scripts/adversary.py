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

        self.state = WAITING
        self.simulated = False
        self.curPos = (6,6)
        self.k = 7

        self.r = rospy.Rate(10) # 10hz

        self.frame_error = -0.001

        self.illegalMove = ((2,2), (2,4), (4,2), (4,4), (3,3))

        self.delta = 0.3
        self.move_tolerance = 0.01
        self.rotate_tolerance = 0.01

        self.planner = self.chaseAdv
        self.improPos = None

        self.loop_state = "down"

        self.des_x = None
        self.des_y = None
        # self.orientation = 0.0

        # self.move_rotations = { (0, 1): 0.0, (0,-1): np.pi, (1,0): -np.pi/2, (-1,0): np.pi/2 }

        if self.simulated:
            while not rospy.is_shutdown():
                if self.state == MOVING or self.state == ROTATING:
                    print("Adversary moving...")
                    self.curPos = self.planner(self.improPos, self.curPos)
                    new_x, new_y = self.d_to_c(*self.curPos)
                    rospy.sleep(3)
                    self.adv_pub.publish(FlagPosition(True, new_x, new_y))
                    print("Adversary move complete!")
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
        return ref_x, ref_y

    def adv(self, msg):
        if not self.simulated:
            # print(adv_pos)
            if self.state == ROTATING:
                arrived = self.rotate(msg, self.des_x, self.des_y)
                if arrived:
                    # print("Finished rotating!")
                    self.state = MOVING

            if self.state == MOVING:
                arrived = self.move(msg, self.des_x, self.des_y)
                if arrived:
                    # print("Adversary finished moving!")
                    p, q = self.pose_to_pq(msg.pose)

                    g = tr.quaternion_matrix(q)
                    g[0:3, -1] = p

                    g2 = np.eye(4)
                    g2[0:3,-1] = np.array([self.frame_error,0.0,0.0])

                    res = np.dot(g, g2)
                    curr_x, curr_y = res[0:2,-1]

                    self.adv_pub.publish(FlagPosition(True, curr_x, curr_y))
                    self.state = WAITING
                    adv_pos = self.c_to_d(curr_x, curr_y)
                    self.curPos = adv_pos

        
    def move(self, msg, grid_x, grid_y):

        p, q = self.pose_to_pq(msg.pose)

        g = tr.quaternion_matrix(q)
        g[0:3, -1] = p

        g2 = np.eye(4)
        g2[0:3,-1] = np.array([self.frame_error,0.0,0.0])

        g_wt = np.dot(g, g2)
        # curr_x, curr_y = res[0:2,-1]

        place_x, place_y = self.d_to_c(grid_x, grid_y)
        g_gt = np.dot(np.linalg.inv(g_wt), np.array([place_x, place_y, 0, 1]))

        control_command = Twist()
        control_command.linear.x = max(min(0.5*g_gt[0], 0.5), 0.15)
        self.pub.publish(control_command)

        return g_gt[0] <= self.move_tolerance

    def rotate(self, msg, grid_x, grid_y):
        p, q = self.pose_to_pq(msg.pose)

        g = tr.quaternion_matrix(q)
        g[0:3, -1] = p

        g2 = np.eye(4)
        g2[0:3,-1] = np.array([self.frame_error,0.0,0.0])

        res = np.dot(g, g2)
        curr_x, curr_y = res[0:2,-1]

        roll, pitch, yaw = euler_from_quaternion(q)
        des_x, des_y = self.d_to_c(grid_x, grid_y)
        # print("Current pos: ", curr_x, curr_y)
        # print("Destination pos: ", des_x, des_y)
        des_angle = np.arctan2(des_y - curr_y, des_x - curr_x)

        control_command = Twist()
        angle1 = des_angle + np.pi
        angle2 = yaw+np.pi
        if ((angle1-angle2)%(2*np.pi) > (angle2-angle1)%(2*np.pi)):
            direction = -1
        else:
            direction = 1
        control_command.angular.z = direction*max(0.55, min(0.5*(np.abs(des_angle-yaw)), 0.8))
        self.pub.publish(control_command)
        return np.abs(des_angle - yaw) <= self.rotate_tolerance
        # return

    
    def improviserListener(self, msg):
        if msg.flag and self.state == WAITING:
            self.improPos = self.c_to_d(msg.x, msg.y)
            self.des_x, self.des_y = self.planner(self.improPos, self.curPos)
            print("Adversary move to: ", self.des_x, self.des_y)
            self.state = ROTATING
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

        # print(self.loop_state)
        
        if self.loop_state == 'down':
            return (advx, advy-1)
        elif self.loop_state == 'left':
            return (advx+1, advy)
        elif self.loop_state == 'up':
            return (advx, advy+1)
        elif self.loop_state == 'right':
            return (advx-1, advy)
        else:
            print("Uh oh should not be here in loop adv")

    def humanAdv(self, improPos, advPos):
        advx,advy = advPos
        direction = {
          'a': (advx-1,advy),
          'd': (advx+1,advy),
          'w': (advx,advy+1),
          's': (advx,advy-1)
          }
        print("Waiting for input...")
        d = raw_input()
        while d not in direction:
            print('valid directions are: ', sorted(direction.keys()))
            d = raw_input()
        return direction[d]

    def chaseAdv(self, improPos, advPos):

        advx,advy = advPos
        moves = [
          (advx-1,advy),
          (advx+1,advy),
          (advx,advy+1),
          (advx,advy-1)
        ]

        iPos = np.array(improPos)

        dists = [np.linalg.norm(np.array(move) - iPos) if move not in self.illegalMove else 100 for move in moves]

        return moves[np.argmin(dists)]


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
