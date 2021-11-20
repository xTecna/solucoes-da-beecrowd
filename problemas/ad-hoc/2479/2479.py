N = int(input())

criancas = ['' for _ in range(N)]
bemComportadas, malComportadas = 0, 0
for i in range(N):
    comportamento, criancas[i] = input().strip().split(' ')

    if(comportamento == '+'):
        bemComportadas += 1
    else:
        malComportadas += 1

criancas.sort()

for crianca in criancas:
    print(crianca)
print(f'Se comportaram: {bemComportadas} | Nao se comportaram: {malComportadas}')
