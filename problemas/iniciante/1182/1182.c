#include <stdio.h>

int main()
{
    int C;
    char T;
    double soma, numero;

    soma = 0.0;
    scanf("%d\n%c", &C, &T);
    for (int i = 0; i < 12; ++i)
    {
        for (int j = 0; j < 12; ++j)
        {
            scanf("%lf", &numero);

            if (j == C)
            {
                soma += numero;
            }
        }
    }

    printf("%.1lf\n", T == 'S' ? soma : soma / 12);

    return 0;
}