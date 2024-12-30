#include <stdio.h>

int mdc(int a, int b)
{
    return (b == 0) ? a : mdc(b, a % b);
}

int main()
{
    int X, Y;

    while (scanf("%d %d", &X, &Y) != EOF)
    {
        printf("%d\n", 2 * (X / mdc(X, Y) + Y / mdc(X, Y)));
    }

    return 0;
}