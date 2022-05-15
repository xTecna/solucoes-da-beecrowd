def somaPA(a0, n):
    a0 += 1 - (abs(a0) % 2)
    an = a0 + (n - 1) * 2

    return ((a0 + an) * n)//2


N = int(input())
for _ in range(N):
    X, Y = [int(x) for x in input().strip().split(' ')]

    print(somaPA(X, Y))
