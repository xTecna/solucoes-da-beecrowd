X = int(input())
Y = int(input())

if(X > Y):
    X, Y = Y, X

for i in range(X + 1, Y):
    if(1 < i % 5 < 4):
        print(i)
