#include <stdio.h>

int main()
{
    int X, Y, Z, D;

    scanf("%d.%d.%d-%d", &X, &Y, &Z, &D);
    printf("%03d\n%03d\n%03d\n%02d\n", X, Y, Z, D);

    return 0;
}