#include <stdio.h>
#include <math.h>

double limiteInferior(int n)
{
    return n / log(n);
}

double limiteSuperior(int n)
{
    return 1.25506 * n / log(n);
}

int main()
{
    int n;

    scanf("%d", &n);
    printf("%.1lf %.1lf\n", limiteInferior(n), limiteSuperior(n));

    return 0;
}