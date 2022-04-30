#include <stdio.h>

int main()
{
    int M, N;

    while (scanf("%d %d", &M, &N) != EOF)
    {
        if (M <= 0 || N <= 0)
        {
            break;
        }

        if (M > N)
        {
            int temp = M;
            M = N;
            N = temp;
        }

        int soma = 0;
        for (int i = M; i <= N; ++i)
        {
            printf("%d ", i);
            soma += i;
        }
        printf("Sum=%d\n", soma);
    }

    return 0;
}