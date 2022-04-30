def Fatorial(n):
    if(F[n] == -1):
        F[n] = Fatorial(n - 1) * n
    return F[n]


F = [-1 for _ in range(14)]
F[0] = 1

N = int(input())

print(Fatorial(N))
