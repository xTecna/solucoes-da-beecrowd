mapa = []


def temSabre(x, y):
    if(mapa[x][y] != 42):
        return False

    for i in range(-1, 2):
        for j in range(-1, 2):
            if(i == 0 and j == 0):
                continue

            if(mapa[x + i][y + j] != 7):
                return False

    return True


N, M = [int(x) for x in input().strip().split(' ')]
for _ in range(N):
    mapa.append([int(x) for x in input().strip().split(' ')])

x, y = 0, 0
for i in range(1, N - 1):
    for j in range(1, M - 1):
        if(temSabre(i, j)):
            x, y = i + 1, j + 1
            break

print(f'{x} {y}')
