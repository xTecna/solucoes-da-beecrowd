#include <stdlib.h>
#include <stdio.h>

int comp(const void *a, const void *b)
{
    return (*(int *)a - *(int *)b);
}

int main()
{
    int A, D, atacantes[11], defensores[11];

    while (scanf("%d %d", &A, &D))
    {
        if (!A && !D)
            break;

        for (int i = 0; i < A; ++i)
        {
            scanf("%d", &atacantes[i]);
        }

        for (int i = 0; i < D; ++i)
        {
            scanf("%d", &defensores[i]);
        }

        qsort(atacantes, A, sizeof(int), comp);
        qsort(defensores, D, sizeof(int), comp);

        int atacante = atacantes[0];
        int penultimo = defensores[1];

        printf("%c\n", atacante < penultimo ? 'Y' : 'N');
    }

    return 0;
}
