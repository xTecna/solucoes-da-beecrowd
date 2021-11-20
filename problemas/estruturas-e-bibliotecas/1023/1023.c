#include <string.h>
#include <stdio.h>
#include <math.h>

int main()
{
    double consumo_medio;
    int T, N, X, Y, totalX, totalY, first, consumos[201];

    T = 0;
    while (scanf("%d", &N))
    {
        if (!N)
            break;

        if (T)
            printf("\n");

        memset(consumos, 0, sizeof(consumos));

        totalX = 0, totalY = 0;
        for (int i = 0; i < N; ++i)
        {
            scanf("%d %d", &X, &Y);

            totalX += X;
            totalY += Y;
            consumos[Y / X] += X;
        }

        printf("Cidade# %d:\n", ++T);
        first = 1;
        for (int i = 0; i < 201; ++i)
        {
            if (consumos[i] > 0)
            {
                if (first)
                    first = 0;
                else
                    printf(" ");

                printf("%d-%d", consumos[i], i);
            }
        }

        consumo_medio = ((100 * totalY) / totalX) / 100.0;
        printf("\nConsumo medio: %.2lf m3.\n", consumo_medio);
    }

    return 0;
}
