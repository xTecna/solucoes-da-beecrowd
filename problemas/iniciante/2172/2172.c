#include <stdio.h>

int main()
{
    long long int X, M;

    while (scanf("%lld %lld\n", &X, &M) != EOF)
    {
        if (X == 0 && M == 0)
        {
            break;
        }

        printf("%lld\n", X * M);
    }

    return 0;
}