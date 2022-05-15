#include <stdio.h>

int main()
{
    int L;
    char T;
    double soma, numero;

    scanf("%d\n%c", &L, &T);

    soma = 0.0;
    for (int i = 0; i < 12; ++i)
    {
        for (int j = 0; j < 12; ++j)
        {
            scanf("%lf", &numero);

            if (i == L)
            {
                soma += numero;
            }
        }
    }

    printf("%.1lf\n", T == 'S' ? soma : soma / 12);

    return 0;
}