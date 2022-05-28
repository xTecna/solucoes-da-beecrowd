import math


def dist(x1, y1, x2, y2):
    return math.sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2))


while True:
    try:
        r1, x1, y1, r2, x2, y2 = [int(x) for x in input().strip().split(' ')]

        if(dist(x1, y1, x2, y2) <= r1 - r2):
            print("RICO")
        else:
            print("MORTO")
    except EOFError:
        break
