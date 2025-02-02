N = int(input())
mesas = list(range(N + 1))

Q = int(input())
for _ in range(Q):
  query = [int(x) for x in input().strip().split(' ')]
  if (query[0] == 1):
    A, B = query[1:]
    mesas[A], mesas[B] = mesas[B], mesas[A]
  else:
    A = int(query[1])
    mesa = mesas[A]
    voltas = 0
    while mesa != A:
      voltas += 1
      mesa = mesas[mesa]
    print(voltas)
