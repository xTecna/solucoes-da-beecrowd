import math

def dist(x1, y1, x2, y2):
    return math.sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2))

while True:
    l, c, r1, r2 = [int(x) for x in input().strip().split(' ')]
    if (l == 0 and c == 0 and r1 == 0 and r2 == 0):
        break

    x1, y1, x2, y2 = r1, r1, l - r2, c - r2
    distancia = dist(x1, y1, x2, y2)
    if(l < 2 * r1 or c < 2 * r1 or l < 2 * r2 or c < 2 * r2 or distancia < r1 + r2):
        print("N")
    else:
        print("S")
