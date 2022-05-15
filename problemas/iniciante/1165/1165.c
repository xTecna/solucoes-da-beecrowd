#include <stdio.h>
#define NMAX 10000001

int C[NMAX];

void Crivo()
{
    C[0] = 0;
    C[1] = 0;
    C[2] = 1;
    for (int i = 4; i < NMAX; i += 2)
    {
        C[i] = 0;
    }
    for (int i = 3; i < NMAX; i += 2)
    {
        C[i] = 1;
    }

    for (int i = 3; i < NMAX; i += 2)
    {
        if (C[i])
        {
            for (int j = 3 * i; j < NMAX; j += 2 * i)
            {
                C[j] = 0;
            }
        }
    }
}

int main()
{
    int N, X;

    Crivo();

    scanf("%d", &N);
    for (int i = 0; i < N; ++i)
    {
        scanf("%d", &X);

        if (C[X])
        {
            printf("%d eh primo\n", X);
        }
        else
        {
            printf("%d nao eh primo\n", X);
        }
    }

    return 0;
}