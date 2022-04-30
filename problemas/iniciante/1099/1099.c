#include <stdlib.h>
#include <stdio.h>

int numeroImpares(int X, int Y)
{
    return (Y - X) / 2 + 1;
}

int somaPA(int a0, int an)
{
    return (a0 + an) * numeroImpares(a0, an) / 2;
}

int main()
{
    int N, X, Y;

    scanf("%d", &N);
    for (int i = 0; i < N; ++i)
    {
        scanf("%d %d", &X, &Y);

        if (X > Y)
        {
            int temp = X;
            X = Y;
            Y = temp;
        }

        X += (abs(X) % 2) + 1;
        Y -= (abs(Y) % 2) + 1;

        printf("%d\n", X > Y ? 0 : somaPA(X, Y));
    }

    return 0;
}