# Patrolling drone demo of reactive control improvisation
# by Daniel J. Fremont

from collections import defaultdict
import random
import itertools
import time
import sys

import reactive
from DFALib import DFA, ExplicitDFA

k = 7
alphabet = { (1,0), (-1,0), (0,1), (0,-1) }
clamp = lambda x: max(0, min(k-1, x))
low = k // 3
mid = k // 2
high = (2 * k) // 3
assert low < mid
assert mid < high
targets = ((low, low), (low, high), (high, low), (high, high))
advNoFly = set(targets) | { (mid, mid) }
#print(targets)
#print(advNoFly)

def initialStateFor(mpos, apos):
	return (tuple(mpos), tuple(apos), 0, tuple(False for t in targets))

def spec(advPos, disallowRepeats=False):
	numLocs = len(targets)
	failure = 0
	success = 1
	baseStates = set(
		itertools.product(
			itertools.product(range(k), repeat=2),
			itertools.product(range(k), repeat=2),
			range(2),
			itertools.product((False, True), repeat=numLocs)
		)
	)
	states = baseStates | { failure, success }
	accepting = { success }
	initial = ((0, 0), advPos, 0, tuple(False for i in range(numLocs)))
	delta = defaultdict(dict)
	for mx, my in itertools.product(range(k), repeat=2):
		for ax, ay in itertools.product(range(k), repeat=2):
			for p in range(2):
				for v in itertools.product((False, True), repeat=numLocs):
					t = [(mx, my), (ax, ay), p, v]
					state = tuple(t)
					loc = state[p]
					transitions = delta[state]
					for symbol in alphabet:
						dx, dy = symbol
						newLoc = (clamp(loc[0] + dx), clamp(loc[1] + dy))
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
								for index, target in enumerate(targets):
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
	for symbol in alphabet:
		tf[symbol] = failure
		ts[symbol] = success
	return ExplicitDFA(alphabet, states, accepting, initial, delta)

def createImpro(n=40, advPos=(k-1, k-1), verbose=False):
	if verbose:
		print('Generating improviser for n='+str(n)+'... (may take a minute)')
	hard = spec(advPos)
	soft = spec(advPos, disallowRepeats=True)

	res = reactive.generate(alphabet, n, hard, soft, epsilon=0.25, softIncludesHard=True)
	if res == None:
		raise Exception('RCI instance infeasible')
	impro, mi, ma, ropt, eopt, alpha, beta = res
	if verbose:
		print('Generated improviser achieving rho='+str(ropt)+', epsilon='+str(eopt))
		print('W(I) = '+str(mi)+', W(A) = '+str(ma))
		print('alpha = '+str(alpha)+', beta = '+str(beta))
	return impro

def runAgainst(impro, adversary, advPos=(k-1, k-1), replanner=None):
	it = impro()
	mw = []
	aw = []
	w = []
	mtraj = []
	atraj = []
	mpos = [0, 0]
	apos = list(advPos)
	mtraj.append(tuple(mpos))
	atraj.append(advPos)
	step = None
	while True:
		try:
			step = it.send(step)
			step = step[0]
			mpos[0] = clamp(mpos[0] + step[0])
			mpos[1] = clamp(mpos[1] + step[1])
			mw.append(step)
			w.append(step)
			mtraj.append(tuple(mpos))
			step = adversary(mpos, apos)
			apos[0] = clamp(apos[0] + step[0])
			apos[1] = clamp(apos[1] + step[1])
			aw.append(step)
			w.append(step)
			atraj.append(tuple(apos))
		except StopIteration:
			proceed = False
			if replanner != None:
				it = replanner(mpos, apos)
				if it != None:
					proceed = True
					step = None
			if not proceed:
				return (mw, aw, w, mtraj, atraj)

def loopAdvTester(n=60):
	lb = low - 1
	hb = high + 1
	assert lb >= 0 and hb < k
	advPos = (hb, hb)

	def loopAdv(mpos, apos):
		x, y = apos
		if x == lb:
			return (1, 0) if y == hb else (0, 1)
		elif x == hb:
			return (-1, 0) if y == lb else (0, -1)
		elif y == lb:
			return (-1, 0)
		elif y == hb:
			return (1, 0)
		else:
			assert 0

	impro = createImpro(n, advPos, verbose=True)

	return lambda: runAgainst(impro, loopAdv, advPos)

def chaseAdv(mpos, apos):
	directions = [ (-1, 0), (0, -1), (1, 0), (0, 1) ]
	def dist(ax, ay):
		dx = mpos[0] - ax
		dy = mpos[1] - ay
		return abs(dx) + abs(dy)
	x, y = apos
	bestDir = None
	bestDist = 1000
	for d in directions:
		nx = clamp(x + d[0])
		ny = clamp(y + d[1])
		if (nx, ny) not in advNoFly:
			dt = dist(nx, ny)
			if dt < bestDist:
				bestDir = d
				bestDist = dt
	assert bestDir != None
	return bestDir

def chaseAdvTester(n=60):
	impro = createImpro(n, verbose=True)
	return lambda: runAgainst(impro, chaseAdv)

def humanAdv(mpos, apos):
	direction = {
		'a': (-1,0),
		'd': (1,0),
		'w': (0,1),
		's': (0,-1)
		}
	printGrid(mpos, apos)
	d = input()
	while d not in direction:
		print('valid directions are: ', sorted(direction.keys()))
		d = input()
	return direction[d]

def printGrid(mpos, apos):
	for y in range(k-1, -1, -1):
		for x in range(k):
			pos = [x, y]
			if pos == mpos:
				print('R', end='')
			elif pos == apos:
				print('A', end='')
			elif tuple(pos) in advNoFly:
				print('X', end='')
			else:
				print('.', end='')
		print()

def interactiveTest(n=60):
	advPos = (k-1, k-1)
	impro = createImpro(n, advPos)

	runAgainst(impro, humanAdv, advPos)

def gazeboPosition(pos):
	workspaceSize = 10	# +/- from origin
	x, y = pos
	center = (k - 1) / 2.0
	scale = lambda o: (o - center) * (workspaceSize / center)
	return (scale(x), scale(y), 10)

def dumpPath(path, id=''):
	with open('path'+str(id)+'.txt', 'w') as out:
		for pos in path:
			x, y, z = gazeboPosition(pos)
			out.write(str(x)+' '+str(y)+' '+str(z)+'\n')

def genPaths(tester, paths=10):
	for i in range(paths):
		mw, aw, w, mtraj, atraj = tester()
		dumpPath(mtraj, i)
		dumpPath(atraj, str(i)+'a')

def humanDemo():
	n = 60
	assert n % 2 == 0	# so replanning doesn't skip someone's turn
	advPos = (k-1, k-1)
	impro = createImpro(n, advPos, verbose=True)

	def replanner(mpos, apos):
		while True:
			a = input('Window completed. Continue playing? (y/n) ')
			if a == 'y':
				break
			elif a == 'n':
				return None
		print('Replanning from current state.')
		state = initialStateFor(mpos, apos)
		return impro(si=state, sa=state, k=0)

	print('Running improviser R against human adversary A.')
	print('Use WASD keys + enter to move.')
	print('Moving onto an X will violate an assumption.')
	runAgainst(impro, humanAdv, advPos, replanner)

def usage():
	print('USAGE: python3 drone.py (chase | loop | human) [seed] [numPaths]')

if __name__ == "__main__":
	argc = len(sys.argv)
	if argc < 2 or argc > 4 or sys.argv[1] in ('-h', '--help'):
		usage()
	else:
		adv = sys.argv[1]
		seed = int(sys.argv[2]) if argc > 2 else None
		numPaths = int(sys.argv[3]) if argc > 3 else 1
		random.seed(seed)
		tester = None
		if adv == 'chase':
			tester = chaseAdvTester()
		elif adv == 'loop':
			tester = loopAdvTester()
		elif adv == 'human':
			humanDemo()
		else:
			usage()
		if tester is not None:
			genPaths(tester, paths=numPaths)
	
