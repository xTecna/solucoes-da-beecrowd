#include <stdio.h>

int main()
{
    double A, B, C;
    const double PI = 3.14159;

    scanf("%lf\n%lf\n%lf", &A, &B, &C);

    printf("TRIANGULO: %.3lf\n", (A * C) / 2.0);
    printf("CIRCULO: %.3lf\n", PI * C * C);
    printf("TRAPEZIO: %.3lf\n", (A + B) / 2.0 * C);
    printf("QUADRADO: %.3lf\n", B * B);
    printf("RETANGULO: %.3lf\n", A * B);

    return 0;
}