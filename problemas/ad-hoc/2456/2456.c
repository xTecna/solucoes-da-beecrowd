#include <stdio.h>

int main()
{
    int cartas[5], crescente, decrescente;

    for (int i = 0; i < 5; ++i)
    {
        scanf("%d", &cartas[i]);
    }

    crescente = decrescente = 1;
    for (int i = 0; i < 4; ++i)
    {
        if (cartas[i] < cartas[i + 1])
            decrescente = 0;
        if (cartas[i] > cartas[i + 1])
            crescente = 0;
    }

    if (crescente == 1)
        printf("C\n");
    else if (decrescente == 1)
        printf("D\n");
    else
        printf("N\n");

    return 0;
}
