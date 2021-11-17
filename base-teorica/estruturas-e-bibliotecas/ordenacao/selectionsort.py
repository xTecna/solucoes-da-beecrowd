def selectionSort(V):
    n = len(V)

    for i in range(n - 1):
        k = i

        for j in range(i + 1, n):
            k = j if comp(V[j], V[k]) < 0 else k

        V[i], V[k] = V[k], V[i]
