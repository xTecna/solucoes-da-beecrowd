import math


def dist(x1, y1, x2, y2):
    return math.sqrt(((x1 - x2) * (x1 - x2)) + ((y1 - y2) * (y1 - y2)))


while True:
    try:
        Xf, Yf, Xi, Yi, Vi, R1, R2 = [int(x)
                                      for x in input().strip().split(' ')]
        distancia = dist(Xf, Yf, Xi, Yi)
        distancia_percorrida = Vi * 1.5

        if(distancia + distancia_percorrida <= R1 + R2):
            print('Y')
        else:
            print('N')
    except EOFError:
        break
