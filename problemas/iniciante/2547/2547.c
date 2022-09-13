#include <stdio.h>

int main()
{
    int N, Amin, Amax, A, permitidos;

    while (scanf("%d %d %d", &N, &Amin, &Amax) != EOF)
    {
        permitidos = 0;

        for (int i = 0; i < N; ++i)
        {
            scanf("%d", &A);

            if (A >= Amin && A <= Amax)
            {
                ++permitidos;
            }
        }

        printf("%d\n", permitidos);
    }

    return 0;
}