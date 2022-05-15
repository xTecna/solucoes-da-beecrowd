F = [-1 for _ in range(61)]
F[0] = 0
F[1] = 1


def Fibonacci(n):
    if(F[n] == -1):
        F[n] = Fibonacci(n - 2) + Fibonacci(n - 1)
    return F[n]


T = int(input())
for _ in range(T):
    N = int(input())

    print(f'Fib({N}) = {Fibonacci(N)}')
