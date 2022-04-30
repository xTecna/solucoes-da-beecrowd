#include <stdio.h>

int main()
{
    int X, Y;

    scanf("%d %d", &X, &Y);

    if (X > Y)
    {
        int temp = X;
        X = Y;
        Y = temp;
    }

    int soma = 0;
    for (int i = X; i <= Y; ++i)
    {
        if (i % 13 == 0)
        {
            continue;
        }
        soma += i;
    }

    printf("%d\n", soma);

    return 0;
}