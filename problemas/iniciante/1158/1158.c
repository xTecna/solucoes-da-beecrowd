#include <stdlib.h>
#include <stdio.h>

long long int somaPA(int a0, int n)
{
    a0 += 1 - (abs(a0) % 2);
    int an = a0 + (n - 1) * 2;

    return ((long long int)(a0 + an) * n) / 2;
}

int main()
{
    int N, X, Y;

    scanf("%d", &N);
    for (int i = 0; i < N; ++i)
    {
        scanf("%d %d", &X, &Y);

        printf("%lld\n", somaPA(X, Y));
    }

    return 0;
}