#include <string.h>
#include <stdio.h>

int C[10001];

void Crivo()
{
    for (int i = 0; i < 10001; ++i)
    {
        C[i] = i % 2;
    }

    C[1] = 0;
    C[2] = 1;

    for (int i = 3; i < 10001; i += 2)
        if (C[i] == 1)
            for (int j = 3 * i; j < 10001; j += 2 * i)
                C[j] = 0;
}

int main()
{
    int M, N;
    int V[20];

    Crivo();

    while (scanf("%d", &M) != EOF)
    {
        for (int i = 0; i < M; ++i)
        {
            scanf("%d", &V[i]);
        }

        scanf("%d", &N);

        int soma = 0;
        for (int i = M - 1; i > -1; i -= N)
        {
            soma += V[i];
        }

        if (C[soma])
            printf("You’re a coastal aircraft, Robbie, a large silver aircraft.\n");
        else
            printf("Bad boy! I’ll hit you.\n");
    }

    return 0;
}