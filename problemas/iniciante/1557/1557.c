#include <stdio.h>
#include <math.h>

int digitos(int numero)
{
    return floor(log10(numero)) + 1;
}

int main()
{
    int N;

    while (scanf("%d", &N) != EOF)
    {
        if (N == 0)
        {
            break;
        }

        int limite = digitos(1 << (2 * N - 2));

        for (int i = 0; i < N; ++i)
        {
            printf("%*d", limite, 1 << i);
            for (int j = 1; j < N; ++j)
            {
                printf(" %*d", limite, 1 << (i + j));
            }
            printf("\n");
        }
        printf("\n");
    }

    return 0;
}