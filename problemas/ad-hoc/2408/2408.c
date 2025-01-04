#include <stdio.h>
#include <stdlib.h>

int comp(const void *a, const void *b)
{
    return (*(int *)a - *(int *)b);
}

int main()
{
    int campeonato[3];

    scanf("%d %d %d\n", &campeonato[0], &campeonato[1], &campeonato[2]);
    qsort(campeonato, 3, sizeof(int), comp);

    printf("%d\n", campeonato[1]);

    return 0;
}