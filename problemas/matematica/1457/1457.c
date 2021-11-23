#include <string.h>
#include <stdio.h>

long long int F[101][21];

long long int fatorial(int n, int k)
{
    if (n < 1)
        return 1;
    if (F[n][k] == -1)
        F[n][k] = n * fatorial(n - k, k);
    return F[n][k];
}

int main()
{
    int i, T, N, K;
    char entrada[100], numero[100];

    for (int i = 1; i <= 100; ++i)
    {
        for (int j = 1; j <= 20; ++j)
        {
            F[i][j] = -1;
        }
    }

    scanf("%d\n", &T);

    for (int k = 0; k < T; ++k)
    {
        scanf("%s", &entrada);

        for (i = 0; i < strlen(entrada); ++i)
        {
            if (entrada[i] == '!')
                break;
        }
        strncpy(numero, entrada, i);
        numero[i] = '\0';
        sscanf(numero, "%d", &N);
        K = strlen(entrada) - i;

        printf("%lld\n", fatorial(N, K));
    }

    return 0;
}
