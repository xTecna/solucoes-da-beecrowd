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
