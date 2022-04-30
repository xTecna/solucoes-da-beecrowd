def numeroImpares(X, Y):
    return (Y - X) // 2 + 1


def somaPA(a0, an):
    return (a0 + an) * numeroImpares(a0, an) // 2


N = int(input())
for _ in range(N):
    X, Y = [int(x) for x in input().strip().split(' ')]

    if (X > Y):
        X, Y = Y, X

    X += (abs(X) % 2) + 1
    Y -= (abs(Y) % 2) + 1

    print(somaPA(X, Y) if X <= Y else 0)
