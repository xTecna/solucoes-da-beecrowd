N = int(input())

resposta = 0
anterior = 0
for _ in range(N):
    atual = int(input())
    if atual != anterior:
        resposta += 1
    anterior = atual

print(resposta)
