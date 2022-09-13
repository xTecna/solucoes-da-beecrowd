#include <stdio.h>

int main()
{
    int M, N, C, numerador, denominador;

    while (scanf("%d", &M) != EOF)
    {
        numerador = 0;
        denominador = 0;

        for (int i = 0; i < M; ++i)
        {
            scanf("%d %d", &N, &C);

            numerador += N * C;
            denominador += C;
        }

        printf("%.4lf\n", numerador / (100.0 * denominador));
    }

    return 0;
}