#include <stdio.h>

int F[41];

int Fibonacci(int n)
{
    if (F[n] == -1)
        F[n] = Fibonacci(n - 1) + Fibonacci(n - 2);
    return F[n];
}

int main()
{
    int N;

    F[0] = 1;
    F[1] = 1;
    for (int i = 2; i <= 40; ++i)
    {
        F[i] = -1;
    }

    while (scanf("%d", &N))
    {
        if (!N)
            break;

        printf("%d\n", Fibonacci(N));
    }

    return 0;
}
