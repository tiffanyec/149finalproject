# Reactive control improvisation implementation
# by Daniel J. Fremont

from collections import defaultdict
import random
import itertools
import time

from DFALib import DFA, ExplicitDFA

def dilated(dfa):
	alphabet = dfa.alphabet
	states = set(itertools.product(range(2), dfa.states))
	accepting = set(itertools.product(range(2), dfa.acceptingStates))
	initial = (0, dfa.initialState)
	delta = dict()
	for state in dfa.states:
		transitions = dfa.delta[state]
		delta[(0, state)] = { symbol: (1, transitions[symbol]) for symbol in transitions }
		delta[(1, state)] = { symbol: (0, state) for symbol in alphabet }
	return ExplicitDFA(alphabet, states, accepting, initial, delta)

def computeWidths(dfa, n, isAdversarial):
	alphabet = dfa.alphabet
	counts = dict()
	for i in range(n, -1, -1):
		c = dict()
		counts[i] = c
		for state in dfa.states:
			if i == n:
				count = 1 if state in dfa.acceptingStates else 0
			else:
				lc = counts[i+1]
				transitions = dfa.delta[state]
				if isAdversarial(state, i):
					count = min((lc[transitions[symbol]] if symbol in transitions else 0 for symbol in alphabet), default=0)
				else:
					count = sum(lc[transitions[symbol]] for symbol in transitions)
			c[state] = count
	return counts

def generate(alphabet, n, hard, soft, rho=None, adversarial=None, softIncludesHard=False, epsilon=None):
	assert rho != None or epsilon != None
	# create automata
	assert alphabet == hard.getAlphabet() and alphabet == soft.getAlphabet()
	i = hard
	if adversarial:
		adversarialI = adversarial
	else:
		adversarialI = lambda state, step: (step % 2 == 1)
	if softIncludesHard:
		a = soft
		adversarialA = adversarialI
	else:
		a = i.intersection(soft)
		adversarialA = lambda state, step: adversarialI(state[0], step)

	iWidths = computeWidths(i, n, adversarialI)
	aWidths = computeWidths(a, n, adversarialA)

	wi = iWidths[0][i.initialState]
	wa = aWidths[0][a.initialState]

	def computeParameters(si=i.initialState, sa=a.initialState, k=0):
		mi, ma = iWidths[k][si], aWidths[k][sa]

		if rho == None:
			if mi == 0 or (epsilon < 1 and ma == 0):
				return None
		elif mi < 1.0 / rho:
			return None

		if rho == None:
			eopt = epsilon
			ropt = max(1.0 / mi, (1.0 - epsilon) / ma)
		else:
			ropt = rho
			eopt = max(1.0 - rho * ma, 0)

		if ma == 0:
			alpha = 0
		else:
			alpha = min(ropt, 1.0 / ma)
		if mi == ma:
			beta = 0
		else:
			beta = (1.0 - alpha * ma) / (mi - ma)

		return (mi, ma, ropt, eopt, alpha, beta)

	res = computeParameters()
	if res == None:
		return None
	mi, ma, ropt, eopt, alpha, beta = res

	def computeWeights(step, si, sa, mi, ma):
		ta = a.delta[sa]
		widths = aWidths[step+1]
		aweights = [(widths[ta[symbol]] if symbol in ta else 0) for symbol in alphabet]
		k = 0
		total = 0
		while k < len(alphabet):
			total += aweights[k]
			if total > ma:
				break
			k += 1
		if total > ma:
			aweights[k] += ma - total
			assert aweights[k] >= 0
			k += 1
			while k < len(alphabet):
				aweights[k] = 0
				k += 1
		assert sum(aweights) == ma
		assert all(w >= 0 for w in aweights)
		ti = i.delta[si]
		widths = iWidths[step+1]
		iweights = ((widths[ti[symbol]] if symbol in ti else 0) for symbol in alphabet)
		diffs = [wi - wa for wi, wa in zip(iweights, aweights)]
		assert all(d >= 0 for d in diffs)
		diff = mi - ma
		assert diff >= 0
		k = 0
		total = 0
		while k < len(alphabet):
			total += diffs[k]
			if total > diff:
				break
			k += 1
		if total > diff:
			diffs[k] += diff - total
			assert diffs[k] >= 0
			k += 1
			while k < len(alphabet):
				diffs[k] = 0
				k += 1
		assert sum(diffs) == diff
		assert all(d >= 0 for d in diffs)
		iweights = tuple(wa + d for wa, d in zip(aweights, diffs))
		assert sum(iweights) == mi
		return (iweights, aweights)

	def improviser(si=i.initialState, sa=a.initialState, k=0):
		res = computeParameters(si, sa, k)
		if res == None:
			raise RuntimeError('instance infeasible from given state')
		mi, ma, ropt, eopt, alpha, beta = res
		#print(mi, ma, ropt, eopt)

		nextWord = []
		while si != None and sa != None and k < n:
			assert adversarialI(si, k) == adversarialA(sa, k)
			if adversarialI(si, k):
				symbol = yield nextWord # get adversary move
				nextWord.clear()
			else:
				(iweights, aweights) = computeWeights(k, si, sa, mi, ma)
				weights = tuple(alpha * nwa + beta * (nwi - nwa) for nwi, nwa in zip(iweights, aweights))
				assert sum(weights) > 0
				symbol, mi, ma = random.choices(tuple(zip(alphabet, iweights, aweights)), weights)[0] # get improviser move
				nextWord.append(symbol)
			si = i.delta[si].get(symbol) # transition based on current symbol
			sa = a.delta[sa].get(symbol) # transition based on current symbol
			k += 1
		if len(nextWord) > 0:
			yield nextWord

	return (improviser, mi, ma, ropt, eopt, alpha, beta)

def avoidanceTest(k=5):
	clamp = lambda x: max(0, min(k-1, x))
	alphabet = { (1,0), (-1,0), (0,1), (0,-1) }

	failure = 0
	accepting = set(
		itertools.product(
			itertools.product(range(k), repeat=2),
			itertools.product(range(k), repeat=2),
			range(2))
		)
	states = accepting | { failure }
	initial = ((0, 0), (k-1, k-1), 0)
	delta = defaultdict(dict)
	for mx in range(k):
		for my in range(k):
			for ax in range(k):
				for ay in range(k):
					for p in range(2):
						t = [(mx, my), (ax, ay), p]
						state = tuple(t)
						loc = state[p]
						transitions = delta[state]
						for symbol in alphabet:
							dx, dy = symbol
							newLoc = (clamp(loc[0] + dx), clamp(loc[1] + dy))
							o = 1 - p
							if t[o] == newLoc:	# collision
								transitions[symbol] = failure
							else:
								t[p] = newLoc
								t[2] = o
								transitions[symbol] = tuple(t)
	transitions = delta[failure]
	for symbol in alphabet:
		transitions[symbol] = failure
	hard = ExplicitDFA(alphabet, states, accepting, initial, delta)

	states = set(itertools.product((False, True), repeat=4))
	accepting = { (True, True, True, True) }
	initial = (False, False, False, False)
	delta = dict()
	oa = list(alphabet)
	for state in states:
		transitions = dict()
		for (index, symbol) in enumerate(oa):
			ns = list(state)
			ns[index] = True
			transitions[symbol] = tuple(ns)
		delta[state] = transitions
	soft = dilated(ExplicitDFA(alphabet, states, accepting, initial, delta))
	#soft = DFA.fullDFA(alphabet)

	impro = generate(alphabet, 10, hard, soft, 1.0 / 20.0)[0]

	def printGrid(mpos, apos):
		for y in range(k-1, -1, -1):
			for x in range(k):
				pos = [x, y]
				if pos == mpos:
					print('R', end='')
				elif pos == apos:
					print('A', end='')
				else:
					print('.', end='')
			print()

	direction = {
		'a': (-1,0),
		'd': (1,0),
		'w': (0,1),
		's': (0,-1)
		}
	mpos = [0, 0]
	apos = [k-1, k-1]
	it = impro()
	step = None
	while True:
		try:
			step = it.send(step)
			assert len(step) == 1
			step = step[0]
			mpos[0] = clamp(mpos[0] + step[0])
			mpos[1] = clamp(mpos[1] + step[1])
			printGrid(mpos, apos)
			step = direction[input()]
			apos[0] = clamp(apos[0] + step[0])
			apos[1] = clamp(apos[1] + step[1])
			#printGrid(mpos, apos)
		except StopIteration:
			s = (tuple(mpos), tuple(apos), 0)
			it = impro(si=s, sa=(s, soft.initialState))
			step = None

def figureTwoTest():
	alphabet = {0, 1, 2}
	states = {
		0,
		1, 2,
		3, 4, 5,
		6, 7
		}
	adversarial = lambda state, step: state == 0
	hardStates = { 3, 4, 5, 6, 7 }
	softStates = { 3, 4 }
	delta = defaultdict(dict)
	delta[0] = { 0: 1, 1: 2, 2: 2 }
	delta[1] = { 0: 3, 1: 6, 2: 4 }
	delta[2] = { 0: 4, 1: 7, 2: 5 }
	hard = ExplicitDFA(alphabet, states, hardStates, 0, delta)
	soft = ExplicitDFA(alphabet, states, softStates, 0, delta)

	impro = generate(alphabet, 2, hard, soft, 1.0 / 3.0, adversarial)[0]

	counts = defaultdict(lambda: 0)
	for i in range(30000):
		word = []
		it = impro()
		word += it.send(None)
		word += it.send(1)
		#print(word)
		counts[tuple(word)] += 1
	print(counts)


if __name__ == "__main__":
	#figureTwoTest()
	avoidanceTest()
