F = [-1 for _ in range(46)]


def Fibonacci(n):
    if(F[n] == -1):
        F[n] = Fibonacci(n - 2) + Fibonacci(n - 1)
    return F[n]


F[0] = 0
F[1] = 1

N = int(input())
Fibonacci(N)

print(' '.join([str(x) for x in F[:N]]))
