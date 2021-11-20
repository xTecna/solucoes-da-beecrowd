#include <stdio.h>

int main()
{
    int numero, maior;

    maior = 0;
    while (scanf("%d", &numero))
    {
        if (!numero)
            break;

        if (numero > maior)
            maior = numero;
    }

    printf("%d\n", maior);

    return 0;
}
