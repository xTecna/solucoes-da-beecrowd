#include <stdio.h>

int r(int x, int y)
{
    return (3 * x) * (3 * x) + y * y;
}

int b(int x, int y)
{
    return 2 * (x * x) + (5 * y) * (5 * y);
}

int c(int x, int y)
{
    return -100 * x + y * y * y;
}

int main()
{
    int N, x, y, rafael, beto, carlos;

    scanf("%d", &N);

    for (int i = 0; i < N; ++i)
    {
        scanf("%d %d", &x, &y);

        rafael = r(x, y);
        beto = b(x, y);
        carlos = c(x, y);

        if (rafael > beto && rafael > carlos)
            printf("Rafael ganhou\n");
        else if (beto > rafael && beto > carlos)
            printf("Beto ganhou\n");
        else
            printf("Carlos ganhou\n");
    }

    return 0;
}