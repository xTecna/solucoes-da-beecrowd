#include <stdio.h>

int main()
{
    int X, Y, a;

    X = 0;
    for (int i = 0; i < 5; ++i)
    {
        scanf("%d", &a);
        X *= 2;
        X += a;
    }

    Y = 0;
    for (int i = 0; i < 5; ++i)
    {
        scanf("%d", &a);
        Y *= 2;
        Y += a;
    }

    printf("%c\n", (X ^ Y) == 31 ? 'Y' : 'N');

    return 0;
}
