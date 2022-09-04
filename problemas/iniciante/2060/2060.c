#include <stdio.h>

int main()
{
    int N, L, multiplos[6];

    scanf("%d", &N);

    for (int i = 2; i < 6; ++i)
    {
        multiplos[i] = 0;
    }

    for (int i = 0; i < N; ++i)
    {
        scanf("%d", &L);

        for (int j = 2; j < 6; ++j)
        {
            if (L % j == 0)
            {
                ++multiplos[j];
            }
        }
    }

    for (int i = 2; i < 6; ++i)
    {
        printf("%d Multiplo(s) de %d\n", multiplos[i], i);
    }

    return 0;
}