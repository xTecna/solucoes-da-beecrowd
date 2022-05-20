#include <stdio.h>

int main()
{
    int N;

    while (scanf("%d", &N) != EOF)
    {
        for (int i = 0; i < N; ++i)
        {
            for (int j = 0; j < N; ++j)
            {
                if (i == N - 1 - j)
                {
                    printf("2");
                }
                else if (i == j)
                {
                    printf("1");
                }
                else
                {
                    printf("3");
                }
            }
            printf("\n");
        }
    }

    return 0;
}