# Patrolling drone demo of reactive control improvisation
# by Daniel J. Fremont

from collections import defaultdict
import random
import itertools
import time
import sys

import reactive
from DFALib import DFA, ExplicitDFA



class RCIDrone:

    def __init__(self, k, n, targets, verbose=False, advPos = (6,6)):
        # print(k, n, targets, alphabet)
        self.targets = targets
        self.alphabet = { (1,0), (-1,0), (0,1), (0,-1) }
        self.k = k
        self.n = n
        self.verbose = verbose
        print("Creating improviser w/ adversary @: ", advPos)
        self.impro = self.createImpro(advPos)

    def clamp(self, x):
        return max(0, min(self.k -1, x))

    def spec(self, advPos, disallowRepeats=False):
    	numLocs = len(self.targets)
        advNoFly = set(self.targets) | { (self.k//2, self.k//2) }
    	failure = 0
    	success = 1
    	baseStates = set(
    		itertools.product(
    			itertools.product(range(self.k), repeat=2),
    			itertools.product(range(self.k), repeat=2),
    			range(2),
    			itertools.product((False, True), repeat=numLocs)
    		)
    	)
    	states = baseStates | { failure, success }
    	accepting = { success }
    	initial = ((0, 0), advPos, 0, tuple(False for i in range(numLocs)))
    	delta = defaultdict(dict)
    	for mx, my in itertools.product(range(self.k), repeat=2):
    		for ax, ay in itertools.product(range(self.k), repeat=2):
    			for p in range(2):
    				for v in itertools.product((False, True), repeat=numLocs):
    					t = [(mx, my), (ax, ay), p, v]
    					state = tuple(t)
    					loc = state[p]
    					transitions = delta[state]
    					for symbol in self.alphabet:
    						dx, dy = symbol
    						newLoc = (self.clamp(loc[0] + dx), self.clamp(loc[1] + dy))
    						o = 1 - p
    						if p == 1 and newLoc in advNoFly:	# adv made illegal move
    							transitions[symbol] = success
    						elif t[o] == newLoc:	# collision
    							transitions[symbol] = failure
    						else:
    							t[p] = newLoc
    							t[2] = o
    							fail = False
    							if p == 0:
    								for index, target in enumerate(self.targets):
    									if disallowRepeats and newLoc == target and v[index]:
    										fail = True
    										break
    									if loc == target:
    										nv = list(v)
    										nv[index] = True
    										t[3] = tuple(nv)
    										break
    							transitions[symbol] = failure if fail else tuple(t)
    					if all(v):
    						accepting.add(state)
    	tf = delta[failure]
    	ts = delta[success]
    	for symbol in self.alphabet:
    		tf[symbol] = failure
    		ts[symbol] = success
    	return ExplicitDFA(self.alphabet, states, accepting, initial, delta)

    def createImpro(self, advPos=None):
        if advPos == None:
            advPos = (self.k-1, self.k-1)
            # print(advPos)
        if self.verbose:
            print('Generating improviser for n='+str(self.n)+'... (may take a minute)')
        hard = self.spec(advPos)
        soft = self.spec(advPos, disallowRepeats=True)

        res = reactive.generate(self.alphabet, self.n, hard, soft, epsilon=0.25, softIncludesHard=True)
        if res == None:
            raise Exception('RCI instance infeasible')
        impro, mi, ma, ropt, eopt, alpha, beta = res
        if self.verbose:
            print('Generated improviser achieving rho='+str(ropt)+', epsilon='+str(eopt))
            print('W(I) = '+str(mi)+', W(A) = '+str(ma))
            print('alpha = '+str(alpha)+', beta = '+str(beta))
        return impro()


# def runAgainst(it, adversary, advPos=(k-1, k-1), replanner=None):
# 	mw = []
# 	aw = []
# 	w = []
# 	mtraj = []
# 	atraj = []
# 	mpos = [0, 0]
# 	apos = list(advPos)
# 	mtraj.append(tuple(mpos))
# 	atraj.append(advPos)
# 	step = None
# 	while True:
# 		try:
# 			step = it.send(step)
# 			step = step[0]
# 			mpos[0] = clamp(mpos[0] + step[0])
# 			mpos[1] = clamp(mpos[1] + step[1])
# 			mw.append(step)
# 			w.append(step)
# 			mtraj.append(tuple(mpos))
# 			step = adversary(mpos, apos)
# 			apos[0] = clamp(apos[0] + step[0])
# 			apos[1] = clamp(apos[1] + step[1])
# 			aw.append(step)
# 			w.append(step)
# 			atraj.append(tuple(apos))
# 		except StopIteration:
# 			proceed = False
# 			if replanner != None:
# 				it = replanner(mpos, apos)
# 				if it != None:
# 					proceed = True
# 					step = None
# 			if not proceed:
# 				return (mw, aw, w, mtraj, atraj)

# def printGrid(mpos, apos):
# 	for y in range(k-1, -1, -1):
# 		for x in range(k):
# 			pos = [x, y]
# 			if pos == mpos:
# 				print('R', end='')
# 			elif pos == apos:
# 				print('A', end='')
# 			elif tuple(pos) in advNoFly:
# 				print('X', end='')
# 			else:
# 				print('.', end='')
# 		print()

# def humanAdv(mpos, apos):
# 	direction = {
# 		'a': (-1,0),
# 		'd': (1,0),
# 		'w': (0,1),
# 		's': (0,-1)
# 		}
# 	printGrid(mpos, apos)
# 	d = input()
# 	while d not in direction:
# 		print('valid directions are: ', sorted(direction.keys()))
# 		d = input()
# 	return direction[d]

# def loopAdv(mpos, apos):
#     lb = low - 1
#     hb = high + 1
#     assert lb >= 0 and hb < k
#     advPos = (hb, hb)
#     x, y = apos
#     if x == lb:
#         return (1, 0) if y == hb else (0, 1)
#     elif x == hb:
#         return (-1, 0) if y == lb else (0, -1)
#     elif y == lb:
#         return (-1, 0)
#     elif y == hb:
#         return (1, 0)
#     else:
#         assert 0

# def humanDemo(impro):
# 	n = 60
# 	assert n % 2 == 0	# so replanning doesn't skip someone's turn
# 	advPos = (k-1, k-1)
# 	# impro = createImpro(n, advPos, verbose=True)

# 	def replanner(mpos, apos):
# 		while True:
# 			a = input('Window completed. Continue playing? (y/n) ')
# 			if a == 'y':
# 				break
# 			elif a == 'n':
# 				return None
# 		print('Replanning from current state.')
# 		state = initialStateFor(mpos, apos)
# 		return impro(si=state, sa=state, k=0)

# 	print('Running improviser R against human adversary A.')
# 	print('Use WASD keys + enter to move.')
# 	print('Moving onto an X will violate an assumption.')
# 	runAgainst(impro, humanAdv, advPos, replanner)

# if __name__ == "__main__":
#     my_drone = RCIDrone(k=k, targets=targets, alphabet=alphabet, n=60, verbose = True)
#     humanDemo(my_drone.impro)



#roslaunch vrpn_client_ros sample.launch server:=192.168.50.4
