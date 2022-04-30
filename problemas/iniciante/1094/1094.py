N = int(input())

coelhos = 0
ratos = 0
sapos = 0
for _ in range(N):
    quantia, tipo = input().strip().split(' ')
    quantia = int(quantia)

    if(tipo == 'C'):
        coelhos += quantia
    elif(tipo == 'R'):
        ratos += quantia
    elif(tipo == 'S'):
        sapos += quantia

total = coelhos + ratos + sapos

print(f'Total: {total} cobaias')
print(f'Total de coelhos: {coelhos}')
print(f'Total de ratos: {ratos}')
print(f'Total de sapos: {sapos}')
print(f'Percentual de coelhos: {coelhos/total * 100:.2f} %')
print(f'Percentual de ratos: {ratos/total * 100:.2f} %')
print(f'Percentual de sapos: {sapos/total * 100:.2f} %')
