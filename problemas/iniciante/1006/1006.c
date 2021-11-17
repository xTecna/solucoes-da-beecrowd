#include <stdio.h>

int main()
{
    double A, B, C, media;

    scanf("%lf\n%lf\n%lf", &A, &B, &C);

    media = (2 * A + 3 * B + 5 * C) / 10.0;

    printf("MEDIA = %.1lf\n", media);

    return 0;
}