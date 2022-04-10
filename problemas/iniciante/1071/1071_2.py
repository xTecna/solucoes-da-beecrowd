def numeroImpares(X, Y):
    return (Y - X)//2 + 1


def somaPA(X, Y):
    return (X + Y) * numeroImpares(X, Y)//2


X = int(input())
Y = int(input())

if X > Y:
    X, Y = Y, X
X += (X % 2) + 1
Y -= (Y % 2) + 1

print(somaPA(X, Y))
