#include <stdio.h>

int main()
{
    double R;
    double volume;
    const double PI = 3.14159;

    scanf("%lf", &R);

    volume = 4.0 / 3.0 * PI * R * R * R;

    printf("VOLUME = %.3lf\n", volume);

    return 0;
}