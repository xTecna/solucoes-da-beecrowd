#include <stdio.h>

int main()
{
    int T, N;

    while (scanf("%d", &T) != EOF)
    {
        for (int i = 0; i < T; ++i)
        {
            scanf("%d", &N);

            int pontas = 2 - (N % 2);
            printf("%d\n", pontas + 2 * (N - pontas));
        }
    }

    return 0;
}