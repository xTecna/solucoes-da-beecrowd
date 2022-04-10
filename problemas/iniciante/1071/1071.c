#include <stdlib.h>
#include <stdio.h>

void swap(int *a, int *b)
{
    int tmp = *a;
    *a = *b;
    *b = tmp;
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

    soma = 0;
    for (int i = X; i <= Y; i += 2)
    {
        soma += i;
    }

    printf("%d\n", soma);

    return 0;
}