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
                if (i == N / 2 && j == N / 2)
                {
                    printf("4");
                }
                else if (N / 3 <= i && i < N - N / 3 && N / 3 <= j && j < N - N / 3)
                {
                    printf("1");
                }
                else if (i == j)
                {
                    printf("2");
                }
                else if (i == N - 1 - j)
                {
                    printf("3");
                }
                else
                {
                    printf("0");
                }
            }
            printf("\n");
        }
        printf("\n");
    }

    return 0;
}