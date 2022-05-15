#include <stdlib.h>
#include <stdio.h>

long long int F[61];

long long int Fibonacci(int n)
{
    if (F[n] == -1)
    {
        F[n] = Fibonacci(n - 2) + Fibonacci(n - 1);
    }
    return F[n];
}

int main()
{
    int T, N;

    memset(F, -1, sizeof(F));
    F[0] = 0;
    F[1] = 1;

    scanf("%d", &T);
    for (int i = 0; i < T; ++i)
    {
        scanf("%d", &N);

        printf("Fib(%d) = %lld\n", N, Fibonacci(N));
    }

    return 0;
}