#include <stdlib.h>
#include <stdio.h>

int inversoes;

int comp(int a, int b)
{
    return a - b;
}

void merge(int *V, int inicio, int meio, int fim)
{
    int *aux = (int *)malloc((fim - inicio) * sizeof(int));
    int i = 0, i1 = inicio, i2 = meio, n1 = meio, n2 = fim;

    while (i1 < n1 && i2 < n2)
    {
        if (comp(V[i1], V[i2]) < 0)
        {
            aux[i++] = V[i1++];
        }
        else
        {
            aux[i++] = V[i2++];
            inversoes += (n1 - i1);
        }
    }

    while (i1 < n1)
        aux[i++] = V[i1++];
    while (i2 < n2)
        aux[i++] = V[i2++];

    for (int i = inicio; i < fim; ++i)
    {
        V[i] = aux[i - inicio];
    }

    free(aux);
}

void mergeSort(int *V, int inicio, int fim)
{
    if (fim - inicio > 1)
    {
        int meio = (inicio + fim) / 2;

        mergeSort(V, inicio, meio);
        mergeSort(V, meio, fim);
        merge(V, inicio, meio, fim);
    }
}

int main()
{
    int N, *P;

    while (scanf("%d", &N))
    {
        if (!N)
            break;

        P = (int *)malloc(N * sizeof(int));

        for (int i = 0; i < N; ++i)
        {
            scanf("%d", &P[i]);
        }

        inversoes = 0;
        mergeSort(P, 0, N);

        printf("%s\n", (inversoes % 2) ? "Marcelo" : "Carlos");

        free(P);
    }

    return 0;
}
