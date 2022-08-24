P, N = [int(x) for x in input().strip().split(' ')]
canos = [int(x) for x in input().strip().split(' ')]

resposta = True
for i in range(1, N):
    resposta &= abs(canos[i - 1] - canos[i]) <= P

print('YOU WIN' if resposta else 'GAME OVER')
