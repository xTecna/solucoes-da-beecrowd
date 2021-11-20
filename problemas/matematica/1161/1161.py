F = [0 for _ in range(21)]
F[0] = 1


def Fatorial(n):
    if(F[n] == 0):
        F[n] = n * Fatorial(n - 1)
    return F[n]


while True:
    try:
        M, N = [int(x) for x in input().strip().split(' ')]

        print(Fatorial(M) + Fatorial(N))
    except EOFError:
        break
