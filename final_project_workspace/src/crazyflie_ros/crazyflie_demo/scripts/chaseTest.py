import numpy as np

illegalMove = ((2,2), (2,4), (4,2), (4,4), (3,3))

def chaseAdv(improPos, advPos):

  advx,advy = advPos
  moves = [
    (advx-1,advy),
    (advx+1,advy),
    (advx,advy+1),
    (advx,advy-1)
  ]
  print(moves)
  iPos = np.array(improPos)

  dists = [np.linalg.norm(np.array(move) - iPos) if move not in illegalMove else 100 for move in moves]
  print(dists)
  return moves[np.argmin(dists)]

test1 = chaseAdv((3,3), (1,1))
print(test1)
test2 = chaseAdv((2,2), (2,1))
print(test2)
test3 = chaseAdv((3,3), (2,3))
print(test3)
