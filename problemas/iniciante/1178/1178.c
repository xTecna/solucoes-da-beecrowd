#include <stdio.h>

int main()
{
    double X;

    scanf("%lf", &X);

    for (int i = 0; i < 100; ++i)
    {
        printf("N[%d] = %.4lf\n", i, X);
        X /= 2;
    }

    return 0;
}