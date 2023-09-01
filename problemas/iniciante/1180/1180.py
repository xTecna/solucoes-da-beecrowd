N = int(input())
X = [int(x) for x in input().strip().split()]

menor_valor = X[0]
posicao = 0

for i in range(1, len(X)):
    valor = X[i]

    if(valor < menor_valor):
        menor_valor = valor
        posicao = i

print(f'Menor valor: {menor_valor}')
print(f'Posicao: {posicao}')