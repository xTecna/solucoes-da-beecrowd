def mdc(a, b):
    return a if b == 0 else mdc(b, a % b)


while(True):
    try:
        X, Y = [int(x) for x in input().strip().split(' ')]

        print(2 * (X//mdc(X, Y) + Y//mdc(X, Y)))
    except EOFError:
        break
