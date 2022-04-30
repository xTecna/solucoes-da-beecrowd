#include <string.h>
#include <stdio.h>

int F[46];

int Fibonacci(int n)
{
    if (F[n] == -1)
    {
        F[n] = Fibonacci(n - 2) + Fibonacci(n - 1);
    }
    return F[n];
}

int main()
{
    memset(F, -1, sizeof(F));
    F[0] = 0;
    F[1] = 1;

    int N;

    scanf("%d", &N);
    Fibonacci(N);

    printf("%d", F[0]);
    for (int i = 1; i < N; ++i)
    {
        printf(" %d", F[i]);
    }
    printf("\n");

    return 0;
}