#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int Crivo(int *C, int *primos, int n)
{
    int p = 0;

    for (int i = 0; i < n; ++i)
    {
        C[i] = 1;
    }
    C[1] = 0;
    primos[p++] = 2;

    for (int i = 4; i < n; i += 2)
    {
        C[i] = 0;
    }

    for (int i = 3; i < n; i += 2)
    {
        if (C[i] == 1)
        {
            primos[p++] = i;

            for (int j = i * 3; j < n; j += 2 * i)
            {
                C[j] = 0;
            }
        }
    }

    return p;
}

int ehPrimo(int *primos, int p, int n)
{
    int limite = sqrt(n) + 1;

    for (int i = 0; i < p && primos[i] < limite; ++i)
    {
        if (n % primos[i] == 0)
        {
            if (n == primos[i])
                return 1;
            return 0;
        }
    }

    return 1;
}

int main()
{
    int N, X, numeroPrimos, C[65536], primos[65536];

    numeroPrimos = Crivo(C, primos, 65536);

    scanf("%d", &N);

    for (int i = 0; i < N; ++i)
    {
        scanf("%d", &X);

        printf("%s\n", ehPrimo(primos, numeroPrimos, X) ? "Prime" : "Not Prime");
    }

    return 0;
}
