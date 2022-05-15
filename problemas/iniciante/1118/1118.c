#include <stdio.h>

int valido(double x)
{
    return (x >= 0.0) && (x <= 10.0);
}

int novoCalculo()
{
    int codigo;

    printf("novo calculo (1-sim 2-nao)\n");
    while (scanf("%d", &codigo) != EOF)
    {
        switch (codigo)
        {
        case 1:
            return 1;
        case 2:
            return 0;
        default:
            break;
        }

        printf("novo calculo (1-sim 2-nao)\n");
    }

    return 0;
}

int main()
{
    int codigo;
    double X, Y;

    X = -1.0;
    Y = -1.0;
    while (scanf("%lf", &Y) != EOF)
    {
        if (valido(Y))
        {
            if (X == -1.0)
            {
                X = Y;
            }
            else
            {
                printf("media = %.2lf\n", (X + Y) / 2);
                X = -1.0;

                if (!novoCalculo())
                {
                    break;
                }
            }
        }
        else
        {
            printf("nota invalida\n");
        }
    }

    return 0;
}