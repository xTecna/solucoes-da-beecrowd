#include <stdio.h>

int main()
{
    double A, B, media;

    scanf("%lf\n%lf", &A, &B);

    media = (3.5 * A + 7.5 * B) / 11.0;

    printf("MEDIA = %.5lf\n", media);

    return 0;
}