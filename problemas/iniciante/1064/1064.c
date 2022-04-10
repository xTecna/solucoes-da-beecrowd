#include <stdio.h>

int main()
{
    int contador;
    double numero, media;

    media = 0.0;
    contador = 0;
    for (int i = 0; i < 6; ++i)
    {
        scanf("%lf", &numero);

        if (numero > 0)
        {
            ++contador;
            media += numero;
        }
    }
    media /= contador;

    printf("%d valores positivos\n", contador);
    printf("%.1lf\n", media);

    return 0;
}