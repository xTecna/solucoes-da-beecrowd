#include <stdio.h>

int main()
{
    int X, Y;

    while (scanf("%d %d", &X, &Y) != EOF)
    {
        if (X == Y)
        {
            break;
        }

        if (X < Y)
        {
            printf("Crescente\n");
        }
        else
        {
            printf("Decrescente\n");
        }
    }

    return 0;
}