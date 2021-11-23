#include <stdio.h>

long long int somaPA(int a0, int an, int n)
{
    return ((long long int)(a0 + an) * n) / 2;
}

int main()
{
    int A, B;

    scanf("%d %d", &A, &B);

    printf("%lld\n", somaPA(A, B, B - A + 1));

    return 0;
}
