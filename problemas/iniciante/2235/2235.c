#include <stdio.h>

int main()
{
    int A, B, C;

    scanf("%d %d %d", &A, &B, &C);

    if (A == B || A == C || B == C || A + B == C || A + C == B || B + C == A)
    {
        printf("S\n");
    }
    else
    {
        printf("N\n");
    }

    return 0;
}