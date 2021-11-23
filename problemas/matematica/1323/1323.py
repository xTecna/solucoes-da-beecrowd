F = [0 for _ in range(101)]
F[1] = 1


def Feynman(n):
    if(F[n] == 0):
        F[n] = Feynman(n - 1) + n * n

    return F[n]


while True:
    try:
        N = int(input())

        if(N == 0):
            break

        print(Feynman(N))
    except EOFError:
        break
