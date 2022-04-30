#include <stdio.h>

int main()
{
    int X, Y;

    while (scanf("%d %d", &X, &Y) != EOF)
    {
        if (X == 0 || Y == 0)
        {
            break;
        }

        if (X > 0)
        {
            if (Y > 0)
            {
                printf("primeiro\n");
            }
            else
            {
                printf("quarto\n");
            }
        }
        else
        {
            if (Y > 0)
            {
                printf("segundo\n");
            }
            else
            {
                printf("terceiro\n");
            }
        }
    }

    return 0;
}