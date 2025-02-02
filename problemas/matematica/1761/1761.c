#include <math.h>
#include <stdio.h>

int main()
{
    double pi = 3.141592654;
    double a, b, c;

    while (scanf("%lf %lf %lf\n", &a, &b, &c) != EOF)
    {
        printf("%.2f\n", 5.0 * (tan(a * pi / 180.0) * b + c));
    }

    return 0;
}