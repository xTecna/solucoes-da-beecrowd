def bubbleSort(V):
    n = len(V)

    for i in range(n - 1):
        for j in range(1, n - i):
            k = j - 1

            if(comp(V[j], V[k]) < 0):
                V[j], V[k] = V[k], V[j]
