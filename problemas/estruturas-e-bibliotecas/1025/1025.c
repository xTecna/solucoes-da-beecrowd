#include <stdlib.h>
#include <stdio.h>

int comp(const void *a, const void *b)
{
    return *(int *)a - *(int *)b;
}

int pesquisaBinaria(int *v, int n, int valor)
{
    int inicio = 0, fim = n, meio;

    while (inicio < fim)
    {
        meio = (inicio + fim) / 2;

        if (v[meio] < valor)
            inicio = meio + 1;
        else
            fim = meio;
    }

    return v[inicio] == valor ? inicio + 1 : -1;
}

int main()
{
    int *marmores;
    int T, N, Q, consulta, resposta;

    T = 1;
    while (scanf("%d %d", &N, &Q))
    {
        if (!N && !Q)
            break;

        marmores = (int *)malloc(sizeof(int) * N);
        for (int i = 0; i < N; ++i)
        {
            scanf("%d", &marmores[i]);
        }

        qsort(marmores, N, sizeof(int), comp);

        printf("CASE# %d:\n", T++);
        for (int i = 0; i < Q; ++i)
        {
            scanf("%d", &consulta);

            resposta = pesquisaBinaria(marmores, N, consulta);

            if (resposta == -1)
                printf("%d not found\n", consulta);
            else
                printf("%d found at %d\n", consulta, resposta);
        }

        free(marmores);
    }

    return 0;
}
