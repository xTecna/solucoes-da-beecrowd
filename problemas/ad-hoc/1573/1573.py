import math

while True:
    try:
        A, B, C = [int(x) for x in input().strip().split(' ')]

        if(not A and not B and not C):
            break

        print(math.floor((A * B * C)**(1.0/3.0)))
    except EOFError:
        break
