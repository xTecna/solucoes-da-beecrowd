#include <stdio.h>

int main()
{
    double numero;
    int positivos;

    positivos = 0;
    for (int i = 0; i < 6; ++i)
    {
        scanf("%lf", &numero);

        if (numero > 0)
            ++positivos;
    }

    printf("%d valores positivos\n", positivos);

    return 0;
}