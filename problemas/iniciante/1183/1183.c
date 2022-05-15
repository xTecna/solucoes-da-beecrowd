#include <stdio.h>

int main()
{
    char O;
    int contador;
    double soma, M[12][12];

    scanf("%c\n", &O);
    soma = 0.0;
    contador = 0;
    for (int i = 0; i < 12; ++i)
    {
        for (int j = 0; j < 12; ++j)
        {
            scanf("%lf", &M[i][j]);

            if (j > i)
            {
                soma += M[i][j];
                ++contador;
            }
        }
    }

    printf("%.1lf\n", O == 'S' ? soma : soma / contador);

    return 0;
}