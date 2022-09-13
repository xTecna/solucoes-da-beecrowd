#include <stdlib.h>
#include <stdio.h>

int comp(const void *a, const void *b)
{
    return *(int *)b - *(int *)a;
}

int main()
{
    int N, Q;
    int P[101];

    while (scanf("%d %d", &N, &Q) != EOF)
    {
        for (int i = 0; i < N; ++i)
        {
            scanf("%d", &P[i]);
        }

        qsort(P, N, sizeof(int), comp);

        for (int i = 0; i < Q; ++i)
        {
            scanf("%d", &N);
            printf("%d\n", P[N - 1]);
        }
    }

    return 0;
}