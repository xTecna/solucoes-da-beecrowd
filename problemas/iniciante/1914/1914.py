QT = int(input())
for _ in range(QT):
    jogador1, jogada1, jogador2, jogada2 = input().strip().split(' ')
    N, M = [int(x) for x in input().strip().split(' ')]

    jogadaGanha = 'IMPAR' if (N + M) % 2 else 'PAR'
    if(jogada1 == jogadaGanha):
        print(jogador1)
    else:
        print(jogador2)