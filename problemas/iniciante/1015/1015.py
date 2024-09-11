import math

x1, y1 = [float(x) for x in input().split(' ')]
x2, y2 = [float(x) for x in input().split(' ')]

distancia = math.sqrt((x2 - x1)*(x2 - x1) + (y2 - y1)*(y2 - y1))

print(f"{distancia:.4f}")