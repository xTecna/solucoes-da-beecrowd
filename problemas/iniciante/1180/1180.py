N = int(input().strip())
entrada = [int(x) for x in input().strip().split(' ')]

menor = entrada[0]
posicao = 0
for i in range(1, N):
    if (entrada[i] < menor):
        menor = entrada[i]
        posicao = i

print(f"Menor valor: {menor}")
print(f"Posicao: {posicao}")
