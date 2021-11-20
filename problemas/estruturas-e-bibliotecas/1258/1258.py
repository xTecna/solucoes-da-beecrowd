class Camiseta:
    def __init__(self, n, c, t):
        self.nome = n
        self.cor = c
        self.tamanho = t


def comp(a, b):
    if(a.cor == b.cor):
        if(a.tamanho == b.tamanho):
            if(a.nome < b.nome):
                return -1
            if(a.nome > b.nome):
                return 1
            return 0
        if(a.tamanho > b.tamanho):
            return -1
        return 1
    if(a.cor < b.cor):
        return -1
    return 1


def particao(V, inicio, fim):
    pivo = V[fim - 1]
    i = inicio
    for j in range(inicio, fim):
        if(comp(V[j], pivo) < 0):
            V[j], V[i] = V[i], V[j]
            i += 1

    if(comp(pivo, V[i]) < 0):
        V[fim - 1], V[i] = V[i], V[fim - 1]

    return i


def quickSort(V, inicio, fim):
    if(fim > inicio):
        posicaoPivo = particao(V, inicio, fim)
        quickSort(V, inicio, posicaoPivo)
        quickSort(V, posicaoPivo + 1, fim)


first = True
while True:
    try:
        N = int(input())

        if(N == 0):
            break

        if(first):
            first = False
        else:
            print('')

        camisetas = []
        for _ in range(N):
            nome = input()
            cor, tamanho = input().strip().split(' ')

            camisetas.append(Camiseta(nome, cor, tamanho))

        quickSort(camisetas, 0, len(camisetas))

        for camiseta in camisetas:
            print(f'{camiseta.cor} {camiseta.tamanho} {camiseta.nome}')
    except EOFError:
        break

