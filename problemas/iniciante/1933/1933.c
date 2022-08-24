#include <stdio.h>

int main()
{
    int A, B;

    scanf("%d %d", &A, &B);

    if (A == B)
    {
        printf("%d\n", A);
    }
    else
    {
        printf("%d\n", A > B ? A : B);
    }

    return 0;
}