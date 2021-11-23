def mdc(a, b):
    return a if (b == 0) else mdc(b, a % b)


def pitagorica(a, b, c):
    return a * a + b * b == c * c or a * a + c * c == b * b or b * b + c * c == a * a


def primitiva(a, b, c):
    return mdc(a, mdc(b, c)) == 1


while True:
    try:
        x, y, z = [int(x) for x in input().strip().split(' ')]

        print(f'tripla{" pitagorica" if pitagorica(x, y, z) else ""}{" primitiva" if pitagorica(x, y, z) and primitiva(x, y, z) else ""}')
    except EOFError:
        break
