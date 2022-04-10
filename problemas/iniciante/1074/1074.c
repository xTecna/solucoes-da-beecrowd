#include <stdio.h>

int main()
{
    int N, X;

    scanf("%d", &N);

    for (int i = 0; i < N; ++i)
    {
        scanf("%d", &X);

        if (X == 0)
        {
            printf("NULL\n");
        }
        else if (X > 0)
        {
            if (X % 2)
            {
                printf("ODD");
            }
            else
            {
                printf("EVEN");
            }
            printf(" POSITIVE\n");
        }
        else
        {
            if (-X % 2)
            {
                printf("ODD");
            }
            else
            {
                printf("EVEN");
            }
            printf(" NEGATIVE\n");
        }
    }

    return 0;
}