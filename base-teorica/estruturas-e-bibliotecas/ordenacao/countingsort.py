def countingSort(V, limite):
    aux = [0 for _ in range(limite)]
    k = 0

    for elemento in V:
        aux[elemento] += 1

    for i in range(limite):
        for j in range(aux[i]):
            V[k] = i
            k += 1
