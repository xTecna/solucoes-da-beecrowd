#include <stdio.h>

int main()
{
    int X;

    scanf("%d", &X);
    X += (X % 2 == 0);

    for (int i = 0; i < 12; i += 2)
    {
        printf("%d\n", X + i);
    }

    return 0;
}