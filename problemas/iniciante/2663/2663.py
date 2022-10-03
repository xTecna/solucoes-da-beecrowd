N = int(input())
K = int(input())

pontos = []
for _ in range(N):
    pontos.append(int(input()))
pontos.sort(reverse=True)

resposta = K
while(resposta < N and pontos[resposta] == pontos[K - 1]):
    resposta += 1
print(resposta)
