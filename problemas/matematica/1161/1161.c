#include <string.h>
#include <stdio.h>

long long int F[21];

long long int Fatorial(int n)
{
    if (F[n] == 0)
        F[n] = n * Fatorial(n - 1);
    return F[n];
}

int main()
{
    int M, N;

    memset(F, 0, sizeof(F));
    F[0] = 1;

    while (scanf("%d %d", &M, &N) != EOF)
    {
        printf("%lld\n", Fatorial(M) + Fatorial(N));
    }

    return 0;
}
