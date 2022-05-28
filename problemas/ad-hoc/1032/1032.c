#include <stdio.h>
#define PRIMO_LIMITE 32612
#define LIMITE 3502

int C[PRIMO_LIMITE], primos[LIMITE], F[LIMITE][LIMITE];

void Crivo()
{
    int n_primos = 0;

    for (int i = 0; i < PRIMO_LIMITE; ++i)
    {
        C[i] = 1;
    }
    C[1] = 0;
    primos[n_primos++] = 2;

    for (int i = 4; i < PRIMO_LIMITE; i += 2)
    {
        C[i] = 0;
    }

    for (int i = 3; i < PRIMO_LIMITE; i += 2)
    {
        if (C[i] == 1)
        {
            primos[n_primos++] = i;
            for (int j = i * 3; j < PRIMO_LIMITE; j += 2 * i)
            {
                C[j] = 0;
            }
        }
    }
}

int josephus(int n, int k)
{
    if (F[n][k] == -1)
    {
        F[n][k] = (josephus(n - 1, k + 1) + primos[k] - 1) % n + 1;
    }
    return F[n][k];
}

int main()
{
    int n;

    Crivo();

    for (int i = 0; i < LIMITE; ++i)
    {
        for (int j = 0; j < LIMITE; ++j)
        {
            F[i][j] = -1;
        }
    }

    for (int i = 0; i < LIMITE; ++i)
    {
        F[1][i] = 1;
    }

    while (scanf("%d", &n) != EOF)
    {
        if (n == 0)
        {
            break;
        }

        printf("%d\n", josephus(n, 0));
    }

    return 0;
}