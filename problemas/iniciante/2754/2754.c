#include <stdio.h>

int main()
{
    double v1 = 234.345, v2 = 45.698;

    printf("%.6f - %.6f\n", v1, v2);
    printf("%.0f - %.0f\n", v1, v2);
    printf("%.1f - %.1f\n", v1, v2);
    printf("%.2f - %.2f\n", v1, v2);
    printf("%.3f - %.3f\n", v1, v2);
    printf("%e - %e\n", v1, v2);
    printf("%E - %E\n", v1, v2);
    printf("%g - %g\n", v1, v2);
    printf("%g - %g\n", v1, v2);

    return 0;
}