mapa = []


def segura(x, y):
    return mapa[x][y] + mapa[x + 1][y] + mapa[x][y + 1] + mapa[x + 1][y + 1] >= 2


N = int(input())
for _ in range(N + 1):
    mapa.append([int(x) for x in input().strip().split(' ')])

for i in range(N):
    for j in range(N):
        print('S' if segura(i, j) else 'U', end='')
    print('')
