#include <stdio.h>

int pos_final[25];

int comp(int a, int b)
{
    return pos_final[a] - pos_final[b];
}

void swap(int *a, int *b)
{
    int aux = *a;
    *a = *b;
    *b = aux;
}

int insertionSort(int *V, int n)
{
    int inversoes = 0;

    for (int i = 1; i < n; ++i)
    {
        int j = i, k = j - 1;

        while (k > -1 && comp(V[j], V[k]) < 0)
        {
            swap(&V[j], &V[k]);
            ++inversoes;
            --j, --k;
        }
    }

    return inversoes;
}

int main()
{
    int N, comeco[24], final[24];

    while (scanf("%d", &N) != EOF)
    {
        for (int i = 0; i < N; ++i)
        {
            scanf("%d", &comeco[i]);
        }

        for (int i = 0; i < N; ++i)
        {
            scanf("%d", &final[i]);
            pos_final[final[i]] = i;
        }

        printf("%d\n", insertionSort(comeco, N));
    }

    return 0;
}
