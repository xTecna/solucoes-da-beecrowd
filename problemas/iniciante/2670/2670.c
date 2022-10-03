#include <stdio.h>

int min(int a, int b)
{
    return a < b ? a : b;
}

int main()
{
    int A1, A2, A3;

    scanf("%d\n%d\n%d\n", &A1, &A2, &A3);
    printf("%d\n", 2 * min(A2 + 2 * A3, min(A1 + A3, 2 * A1 + A2)));

    return 0;
}