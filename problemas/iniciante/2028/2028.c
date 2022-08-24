#include <stdio.h>

int somaPA(int an)
{
    return (an * (an + 1)) / 2;
}

int main()
{
    int N, k;

    k = 1;
    while (scanf("%d", &N) != EOF)
    {
        printf("Caso %d: %d numero%s\n", k++, somaPA(N) + 1, N == 0 ? "" : "s");

        printf("0");
        for (int i = 1; i <= N; ++i)
        {
            for (int j = 0; j < i; ++j)
            {
                printf(" %d", i);
            }
        }
        printf("\n\n");
    }

    return 0;
}