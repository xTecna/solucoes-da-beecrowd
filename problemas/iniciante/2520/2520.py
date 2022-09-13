def distanciaManhattan(x1, y1, x2, y2):
    return abs(x1 - x2) + abs(y1 - y2)

while True:
    try:
        N, M = [int(x) for x in input().strip().split(' ')]

        x1, y1, x2, y2 = 0, 0, 0, 0
        for i in range(N):
            linha = [int(x) for x in input().strip().split(' ')]
            for j in range(M):
                if(linha[j] == 1):
                    x1, y1 = i, j
                elif(linha[j] == 2):
                    x2, y2 = i, j

        print(distanciaManhattan(x1, y1, x2, y2))
    except EOFError:
        break