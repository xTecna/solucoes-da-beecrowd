#include <stdio.h>

int main()
{
    double nota;
    int N, pesos[3] = {2, 3, 5};

    scanf("%d", &N);
    for (int k = 0; k < N; ++k)
    {
        double media = 0.0;

        for (int i = 0; i < 3; ++i)
        {
            scanf("%lf", &nota);
            media += pesos[i] * nota;
        }

        printf("%.1lf\n", media / 10);
    }

    return 0;
}