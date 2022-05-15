#include <stdio.h>

int somaPA(int a0, int n)
{
    int an = (a0 + n - 1);

    return (a0 + an) * n / 2;
}

int main()
{
    int A, N;

    scanf("%d", &A);

    while (scanf("%d", &N) != EOF)
    {
        if (N > 0)
        {
            break;
        }
    }

    printf("%d\n", somaPA(A, N));

    return 0;
}