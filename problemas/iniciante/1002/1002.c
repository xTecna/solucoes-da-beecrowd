#include <stdio.h>

int main()
{
    double raio;
    const double PI = 3.14159;

    scanf("%lf", &raio);

    printf("A=%.4lf\n", PI * raio * raio);

    return 0;
}