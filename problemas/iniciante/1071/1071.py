X = int(input())
Y = int(input())

if X > Y:
    X, Y = Y, X
X += (X % 2) + 1
Y -= (Y % 2) + 1

print(sum(range(X, Y + 1, 2)))
