p, j1, j2, r, a = [int(x) for x in input().strip().split(' ')]

if(r):
    if(a):
        print('Jogador 2 ganha!')
    else:
        print('Jogador 1 ganha!')
else:
    if(a):
        print('Jogador 1 ganha!')
    else:
        print(f'Jogador {1 if (j1 + j2) % 2 == (1 - p) else 2} ganha!')
