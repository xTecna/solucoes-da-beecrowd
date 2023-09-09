#include <stdio.h>

int main()
{
    int D, M, A;

    scanf("%d/%d/%d", &D, &M, &A);

    printf("%02d/%02d/%02d\n", M, D, A);
    printf("%02d/%02d/%02d\n", A, M, D);
    printf("%02d-%02d-%02d\n", D, M, A);

    return 0;
}