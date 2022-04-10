#include <stdio.h>

int main()
{
    int N;

    scanf("%d", &N);

    for (int i = 1; i < 11; ++i)
        printf("%d x %d = %d\n", i, N, i * N);

    return 0;
}