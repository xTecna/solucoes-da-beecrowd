#include <stdio.h>

int main()
{
    char C;
    int N, P, Q;

    scanf("%d", &N);
    scanf("%d %c %d", &P, &C, &Q);

    if (C == '+')
    {
        if (P + Q <= N)
            printf("OK\n");
        else
            printf("OVERFLOW\n");
    }
    else
    {
        if (P * Q <= N)
            printf("OK\n");
        else
            printf("OVERFLOW\n");
    }

    return 0;
}