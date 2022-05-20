import math

while True:
    try:
        A, B, C = [int(x) for x in input().strip().split(' ')]

        if(A == 0):
            break

        print(f'{math.floor(math.sqrt(A * B * 100/C)):.0f}')
    except EOFError:
        break
    except ValueError:
        break
