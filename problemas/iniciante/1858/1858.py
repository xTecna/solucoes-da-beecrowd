N = int(input())
entrada = [int(x) for x in input().strip().split(' ')]

menor = entrada[0]
resposta = 1
for i in range(1, N):
    if(entrada[i] < menor):
        menor = entrada[i]
        resposta = i + 1

print(resposta)