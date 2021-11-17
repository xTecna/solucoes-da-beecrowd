#include <stdlib.h>
#include <stdio.h>

int comp(const void *a, const void *b)
{
    return *(int *)a - *(int *)b;
}

int main()
{
    int v[3], V[3];

    for (int i = 0; i < 3; ++i)
    {
        scanf("%d", &V[i]);
        v[i] = V[i];
    }

    qsort(v, 3, sizeof(int), comp);

    for (int i = 0; i < 3; ++i)
    {
        printf("%d\n", v[i]);
    }
    printf("\n");
    for (int i = 0; i < 3; ++i)
    {
        printf("%d\n", V[i]);
    }

    return 0;
}