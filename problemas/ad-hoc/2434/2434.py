n, saldo = [int(x) for x in input().strip().split(' ')]

resposta = saldo
for _ in range(n):
    movimentacao = int(input())
    saldo += movimentacao

    resposta = min(resposta, saldo)

print(resposta)