#include <stdio.h>

int main()
{
    int a[4], d[11];

    while (scanf("%d.%d.%d-%d", &a[0], &a[1], &a[2], &a[3]) != EOF)
    {
        for (int i = 0; i < 11; ++i)
        {
            d[i] = 0;
        }

        for (int i = 0; i < 3; ++i)
        {
            int j = 2;

            while (a[i])
            {
                d[3 * i + j] = a[i] % 10;

                a[i] /= 10;
                --j;
            }
        }

        d[9] = a[3] / 10;
        d[10] = a[3] % 10;

        int soma = 0;
        for (int i = 0; i < 9; ++i)
        {
            soma += (i + 1) * d[i];
        }
        soma %= 11;
        if (soma == 10)
            soma = 0;

        if (soma == d[9])
        {
            soma = 0;
            for (int i = 0; i < 9; ++i)
            {
                soma += (9 - i) * d[i];
            }
            soma %= 11;
            if (soma == 10)
                soma = 0;

            if (soma == d[10])
            {
                printf("CPF valido\n");
            }
            else
            {
                printf("CPF invalido\n");
            }
        }
        else
        {
            printf("CPF invalido\n");
        }
    }

    return 0;
}
