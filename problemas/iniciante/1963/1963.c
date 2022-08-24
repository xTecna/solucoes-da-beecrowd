#include <stdio.h>

int main()
{
    double A, B;

    scanf("%lf %lf", &A, &B);
    printf("%.2lf%%\n", 100 * B / A - 100);

    return 0;
}