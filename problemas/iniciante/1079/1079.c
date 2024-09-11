#include <stdio.h>

int main()
{
    double media, notas[3];
    int N, pesos[3] = {2, 3, 5};

    scanf("%d", &N);

    for (int k = 0; k < N; ++k)
    {
        media = 0.0;

        for (int i = 0; i < 3; ++i)
        {
            scanf("%lf", &notas[i]);
            media += pesos[i] * notas[i];
        }

        printf("%.1lf\n", media / 10);
    }

    return 0;
}