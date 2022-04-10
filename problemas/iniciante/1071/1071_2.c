#include <stdlib.h>
#include <stdio.h>

void swap(int *a, int *b)
{
    int tmp = *a;
    *a = *b;
    *b = tmp;
}

int numeroImpares(int X, int Y)
{
    return (Y - X) / 2 + 1;
}

int somaPA(int X, int Y)
{
    return (X + Y) * numeroImpares(X, Y) / 2;
}

int main()
{
    int X, Y, soma;

    scanf("%d %d", &X, &Y);
    if (X > Y)
    {
        swap(&X, &Y);
    }
    X += (abs(X) % 2) + 1;
    Y -= (abs(Y) % 2) + 1;

    printf("%d\n", somaPA(X, Y));

    return 0;
}