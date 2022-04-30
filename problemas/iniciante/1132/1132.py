X = int(input())
Y = int(input())

if (X > Y):
    X, Y = Y, X

soma = 0
for i in range(X, Y + 1):
    if(i % 13 == 0):
        continue
    soma += i

print(soma)
