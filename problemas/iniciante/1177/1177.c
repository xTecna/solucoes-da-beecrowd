#include <stdio.h>

int main()
{
    int N;

    scanf("%d", &N);

    for (int i = 0; i < 1000; ++i)
    {
        printf("N[%d] = %d\n", i, i % N);
    }

    return 0;
}