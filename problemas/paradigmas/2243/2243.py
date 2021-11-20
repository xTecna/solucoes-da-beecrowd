N = int(input().strip())
colunas = [int(x) for x in input().strip().split(' ')]

esquerda, direita = [0 for _ in range(N)], [0 for _ in range(N)]

esquerda[0] = 1
for i in range(1, N):
    esquerda[i] = min(colunas[i], esquerda[i - 1] + 1)

direita[N - 1] = 1
for i in range(N - 2, -1, -1):
    direita[i] = min(colunas[i], direita[i + 1] + 1)

print(max([min(esquerda[i], direita[i]) for i in range(N)]))
