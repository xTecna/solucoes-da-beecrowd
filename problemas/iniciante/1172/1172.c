#include <stdio.h>

int main()
{
    int X;

    for (int i = 0; i < 10; ++i)
    {
        scanf("%d", &X);
        printf("X[%d] = %d\n", i, (X <= 0) ? 1 : X);
    }

    return 0;
}