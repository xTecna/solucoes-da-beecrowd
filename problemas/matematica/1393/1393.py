F = [-1 for _ in range(41)]
F[0] = 1
F[1] = 1


def Fibonacci(n):
    if(F[n] == -1):
        F[n] = Fibonacci(n - 1) + Fibonacci(n - 2)
    return F[n]


while True:
    try:
        N = int(input())

        if(N == 0):
            break

        print(Fibonacci(N))
    except EOFError:
        break
