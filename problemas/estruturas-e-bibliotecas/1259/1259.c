#include <stdlib.h>
#include <stdio.h>

int comp(const void *a, const void *b)
{
    int A = *(int *)a, B = *(int *)b;

    if (A % 2 == 0)
        if (B % 2 == 0)
            return A - B;
        else
            return -1;
    else if (B % 2 == 0)
        return 1;
    else
        return B - A;
}

int main()
{
    int n, numeros[100000];

    scanf("%d", &n);

    for (int i = 0; i < n; ++i)
    {
        scanf("%d", &numeros[i]);
    }

    qsort(numeros, n, sizeof(int), comp);

    for (int i = 0; i < n; ++i)
    {
        printf("%d\n", numeros[i]);
    }

    return 0;
}
