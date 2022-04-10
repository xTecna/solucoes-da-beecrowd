#include <stdlib.h>
#include <stdio.h>

int main()
{
    int numero, impares, positivos, negativos;

    impares = 0;
    positivos = 0;
    negativos = 0;
    for (int i = 0; i < 5; ++i)
    {
        scanf("%d", &numero);

        impares += abs(numero) % 2;
        positivos += numero > 0;
        negativos += numero < 0;
    }

    printf("%d valor(es) par(es)\n", 5 - impares);
    printf("%d valor(es) impar(es)\n", impares);
    printf("%d valor(es) positivo(s)\n", positivos);
    printf("%d valor(es) negativo(s)\n", negativos);

    return 0;
}