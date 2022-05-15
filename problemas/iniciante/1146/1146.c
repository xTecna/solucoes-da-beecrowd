#include <stdio.h>

int main()
{
    int X;

    while (scanf("%d", &X) != EOF)
    {
        if (X == 0)
        {
            break;
        }

        printf("1");
        for (int i = 2; i <= X; ++i)
        {
            printf(" %d", i);
        }
        printf("\n");
    }

    return 0;
}