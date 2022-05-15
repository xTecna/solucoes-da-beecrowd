def somaPA(a0):
    a0 += (abs(a0) % 2)
    an = a0 + 8
    n = 5

    return ((a0 + an) * n)//2


while True:
    try:
        X = int(input())

        if(X == 0):
            break

        print(somaPA(X))
    except EOFError:
        break
