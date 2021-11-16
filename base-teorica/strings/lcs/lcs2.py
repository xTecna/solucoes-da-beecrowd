def LCS(A, B):
    n, m = len(A), len(B)
    T = [[0 for _ in range(m + 1)] for _ in range(n + 1)]

    resposta = 0
    for i in range(1, n + 1):
        for j in range(1, m + 1):
            if(A[i - 1] == B[j - 1]):
                T[i][j] = T[i - 1][j - 1] + 1
                resposta = max(resposta, T[i][j])

    return resposta
