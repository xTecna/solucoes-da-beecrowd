#include <stdio.h>

int main()
{
    char O;
    int contador;
    double soma, numero;

    soma = 0.0;
    contador = 0;
    scanf("%c", &O);
    for (int i = 0; i < 12; ++i)
    {
        for (int j = 0; j < 12; ++j)
        {
            scanf("%lf", &numero);

            if (i > j)
            {
                soma += numero;
                ++contador;
            }
        }
    }

    printf("%.1lf\n", O == 'S' ? soma : soma / contador);

    return 0;
}