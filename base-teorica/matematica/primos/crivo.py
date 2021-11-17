def Crivo(n):
    C = [True for _ in range(n)]

    C[1] = False

    for i in range(4, n, 2):
        C[i] = False

    for i in range(3, n, 2):
        if(C[i]):
            for j in range(i * 3, n, 2 * i):
                C[j] = False

    return C
