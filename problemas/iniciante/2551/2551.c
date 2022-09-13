#include <stdio.h>

int main()
{
    int N, T, D;
    double V, Vmax;

    while (scanf("%d", &N) != EOF)
    {
        Vmax = 0;
        for (int i = 1; i <= N; ++i)
        {
            scanf("%d %d", &T, &D);

            V = (double)D / T;
            if (V > Vmax)
            {
                Vmax = V;
                printf("%d\n", i);
            }
        }
    }

    return 0;
}