#include <stdio.h>

int comp(int a, int b)
{
    return a - b;
}

void swap(int *a, int *b)
{
    int aux = *a;
    *a = *b;
    *b = aux;
}

int insertionSort(int *V, int n)
{
    int trocas = 0;

    for (int i = 1; i < n; ++i)
    {
        int j = i, k = j - 1;

        while (k > -1 && comp(V[j], V[k]) < 0)
        {
            swap(&V[j], &V[k]);
            ++trocas;
            --j, --k;
        }
    }

    return trocas;
}

int main()
{
    int N, L, vagoes[50];

    scanf("%d", &N);

    for (int k = 0; k < N; ++k)
    {
        scanf("%d", &L);

        for (int i = 0; i < L; ++i)
        {
            scanf("%d", &vagoes[i]);
        }

        printf("Optimal train swapping takes %d swaps.\n", insertionSort(vagoes, L));
    }

    return 0;
}
