#include <stdio.h>
#include <math.h>

int main()
{
    double a, b, c, delta, R1, R2;

    scanf("%lf %lf %lf", &a, &b, &c);

    delta = b * b - 4 * a * c;

    if (a != 0 && delta > -1)
    {
        R1 = (-b + sqrt(delta)) / (2 * a);
        R2 = (-b - sqrt(delta)) / (2 * a);

        printf("R1 = %.5lf\nR2 = %.5lf\n", R1, R2);
    }
    else
    {
        printf("Impossivel calcular\n");
    }

    return 0;
}