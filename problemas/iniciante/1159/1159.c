#include <stdlib.h>
#include <stdio.h>

int somaPA(int a0)
{
    a0 += (abs(a0) % 2);
    int an = a0 + 8;
    int n = 5;

    return ((a0 + an) * n) / 2;
}

int main()
{
    int X;

    while (scanf("%d", &X) != EOF)
    {
        if (X == 0)
        {
            break;
        }

        printf("%d\n", somaPA(X));
    }

    return 0;
}