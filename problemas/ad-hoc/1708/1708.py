import math

X, Y = [int(x) for x in input().strip().split(' ')]

print(math.ceil(Y/(Y - X)))
