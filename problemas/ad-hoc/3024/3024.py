[n, x] = [int(x) for x in input().strip().split(' ')]
alturas = [int(x) for x in input().strip().split(' ')]

resposta = 1
acumulado = 1
for i in range(1, n):
    if alturas[i] - alturas[i - 1] <= x:
        acumulado += 1
    else:
        resposta = max(resposta, acumulado)
        acumulado = 1

resposta = max(resposta, acumulado)
print(resposta)