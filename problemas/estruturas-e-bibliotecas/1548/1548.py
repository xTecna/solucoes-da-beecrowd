N = int(input())

for _ in range(N):
    M = int(input())

    original = [int(x) for x in input().split(' ')]

    ordenado = sorted(original, reverse=True)

    resposta = 0
    for i in range(M):
        if(original[i] == ordenado[i]):
            resposta += 1

    print(resposta)

