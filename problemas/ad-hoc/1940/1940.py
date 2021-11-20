J, R = [int(x) for x in input().strip().split(' ')]
jogadas = [int(x) for x in input().strip().split(' ')]

PV = [sum(jogadas[i::J]) for i in range(J)]

vencedor = 0
maior = PV[0]
for i in range(1, J):
    if(PV[i] >= maior):
        vencedor = i
        maior = PV[i]

print(vencedor + 1)
