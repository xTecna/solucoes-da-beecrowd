#include <stdio.h>

int main()
{
    int C, N;

    scanf("%d", &C);
    for (int i = 0; i < C; ++i)
    {
        scanf("%d", &N);
        printf("%d\n", N % 2);
    }

    return 0;
}