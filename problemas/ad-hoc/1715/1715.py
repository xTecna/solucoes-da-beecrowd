N, M = [int(x) for x in input().strip().split(' ')]

jogadores = [0 for _ in range(N)]
for i in range(N):
    gols = [int(x) for x in input().strip().split(' ')]

    for j in range(M):
        if(gols[j] > 0):
            jogadores[i] += 1

resposta = 0
for i in range(N):
    if(jogadores[i] == M):
        resposta += 1

print(resposta)
