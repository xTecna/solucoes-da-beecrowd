import math

t = int(input())

for _ in range(t):
    n, m = [int(x) for x in input().strip().split(' ')]
    print(math.ceil((n - 2) / 3) * math.ceil((m - 2) / 3))