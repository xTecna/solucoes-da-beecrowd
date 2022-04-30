N = int(input())

for i in range(N):
    linha = []
    for j in range(3):
        linha.append(str(4 * i + 1 + j))
    linha.append('PUM')
    print(' '.join(linha))
