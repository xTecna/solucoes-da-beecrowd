#include <stdio.h>

int main()
{
    int numero, pares;

    pares = 0;
    for (int i = 0; i < 5; ++i)
    {
        scanf("%d", &numero);

        pares += !(numero % 2);
    }

    printf("%d valores pares\n", pares);

    return 0;
}