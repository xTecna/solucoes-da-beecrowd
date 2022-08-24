#include <stdio.h>

int main()
{
    double V, D;
    double PI = 3.14;

    while (scanf("%lf\n%lf\n", &V, &D) != EOF)
    {
        D /= 2;

        double area = PI * D * D;
        double altura = V / area;

        printf("ALTURA = %.2lf\nAREA = %.2lf\n", altura, area);
    }

    return 0;
}