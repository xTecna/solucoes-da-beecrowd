#include <stdio.h>

int main()
{
    int A, B, C;

    while (scanf("%d %d %d", &A, &B, &C) != EOF)
    {
        if (A + B + C == 1)
        {
            if (A == 1)
                printf("A\n");
            else if (B == 1)
                printf("B\n");
            else
                printf("C\n");
        }
        else if (A + B + C == 2)
        {
            if (A == 0)
                printf("A\n");
            else if (B == 0)
                printf("B\n");
            else
                printf("C\n");
        }
        else
            printf("*\n");
    }

    return 0;
}
