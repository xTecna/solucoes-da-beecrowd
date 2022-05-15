X, Y = [int(x) for x in input().strip().split(' ')]

for i in range(1, Y + 1, X):
    numeros = []
    for j in range(0, X):
        if(i + j > Y):
            break
        numeros.append(str(i + j))
    print(' '.join(numeros))
