int LCS(char *A, char *B)
{
    int **T;
    int n, m;

    n = strlen(A), m = strlen(B);

    T = (int **)malloc(sizeof(int *) * (n + 1));
    for (int i = 0; i <= n; ++i)
    {
        T[i] = (int *)malloc(sizeof(int) * (m + 1));
        for (int j = 0; j <= m; ++j)
        {
            T[i][j] = 0;
        }
    }

    for (int i = 1; i <= n; ++i)
    {
        for (int j = 1; j <= m; ++j)
        {
            if (A[i - 1] == B[j - 1])
            {
                T[i][j] = T[i - 1][j - 1] + 1;
            }
            else
            {
                T[i][j] = T[i][j - 1];
                T[i][j] = T[i][j] < T[i - 1][j] ? T[i - 1][j] : T[i][j];
            }
        }
    }

    return T[n][m];
}