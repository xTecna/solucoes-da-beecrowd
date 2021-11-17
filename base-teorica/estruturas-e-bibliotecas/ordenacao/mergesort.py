def merge(V, inicio, meio, fim):
    aux = [0 for _ in range(fim - inicio)]
    i, i1, i2, n1, n2 = 0, inicio, meio, meio, fim

    while(i1 < n1 and i2 < n2):
        if(comp(V[i1], V[i2]) < 0):
            aux[i] = V[i1]
            i += 1
            i1 += 1
        else:
            aux[i] = V[i2]
            i += 1
            i2 += 1

    while(i1 < n1):
        aux[i] = V[i1]
        i += 1
        i1 += 1

    while(i2 < n2):
        aux[i] = V[i2]
        i += 1
        i2 += 1

    for i in range(inicio, fim):
        V[i] = aux[i - inicio]


def mergeSort(V, inicio, fim):
    if(fim - inicio > 1):
        meio = (inicio + fim)//2

        mergeSort(V, inicio, meio)
        mergeSort(V, meio, fim)
        merge(V, inicio, meio, fim)
