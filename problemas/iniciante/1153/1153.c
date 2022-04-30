#include <string.h>
#include <stdio.h>

int F[14];

int Fatorial(int n)
{
    if (F[n] == -1)
    {
        F[n] = Fatorial(n - 1) * n;
    }
    return F[n];
}

int main()
{
    int N;

    memset(F, -1, sizeof(F));
    F[0] = 1;

    scanf("%d", &N);

    printf("%d\n", Fatorial(N));

    return 0;
}