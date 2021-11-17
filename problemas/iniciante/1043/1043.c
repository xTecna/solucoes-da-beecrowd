#include <stdlib.h>
#include <stdio.h>

int main()
{
    double A, B, C;

    scanf("%lf %lf %lf", &A, &B, &C);

    if (A < B + C && B < A + C && C < A + B)
    {
        printf("Perimetro = %.1lf\n", A + B + C);
    }
    else
    {
        printf("Area = %.1lf\n", (A + B) / 2 * C);
    }

    return 0;
}