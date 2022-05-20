import math


def calcula(x, y):
    quociente = 0

    if(x > 0):
        if(y > 0):
            quociente = x//y
        else:
            quociente = math.ceil(x/y)
    else:
        if(y > 0):
            quociente = x//y
        else:
            quociente = math.ceil(x/y)

    return f'{quociente} {x - (y * quociente)}'


a, b = [int(x) for x in input().strip().split(' ')]

print(calcula(a, b))
