#include <stdlib.h>
#include <stdio.h>

int min(int a, int b)
{
    return a < b ? a : b;
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

        for (int i = 0; i < N; ++i)
        {
            printf("%3d", 1);
            for (int j = 1; j < N; ++j)
            {
                printf("%4d", min(min(i, N - i - 1), min(j, N - j - 1)) + 1);
            }
            printf("\n");
        }
        printf("\n");
    }

    return 0;
}