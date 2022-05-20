#include <stdio.h>

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
            printf("%3d", i + 1);
            for (int j = 1; j < N; ++j)
            {
                printf("%4d", abs(i - j) + 1);
            }
            printf("\n");
        }
        printf("\n");
    }

    return 0;
}