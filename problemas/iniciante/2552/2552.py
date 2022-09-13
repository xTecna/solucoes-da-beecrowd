def paesDeQueijoVizinhos(matriz, i, j):
    return matriz[i - 1][j] + matriz[i + 1][j] + matriz[i][j - 1] + matriz[i][j + 1]


while True:
    try:
        N, M = [int(x) for x in input().strip().split(' ')]

        matriz = [[0 for _ in range(M + 2)] for _ in range(N + 2)]
        for i in range(1, N + 1):
            linha = [int(x) for x in input().strip().split(' ')]
            for j in range(1, M + 1):
                matriz[i][j] = linha[j - 1]

        for i in range(1, N + 1):
            for j in range(1, M + 1):
                if(matriz[i][j] == 0):
                    print(paesDeQueijoVizinhos(matriz, i, j), end='')
                else:
                    print(9, end='')
            print('')
    except EOFError:
        break
