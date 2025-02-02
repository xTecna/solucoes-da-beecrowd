import math

pi = 3.141592654
while True:
    try:
        a, b, c = [float(x) for x in input().strip().split(' ')]
        print(f'{(5.0 * (math.tan(a * pi / 180.0) * b + c)):.2f}')
    except EOFError:
        break