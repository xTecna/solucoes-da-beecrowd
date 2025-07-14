import math

r, l = [int(x) for x in input().strip().split(' ')]

pi = 3.1415
v = (4.0 * pi * r * r * r) / 3.0

print(math.floor(l / v))
