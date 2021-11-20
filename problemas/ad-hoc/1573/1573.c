#include <stdio.h>
#include <math.h>

int main()
{
    int A, B, C;

    while (scanf("%d %d %d", &A, &B, &C))
    {
        if (!A && !B && !C)
            break;

        printf("%.0lf\n", floor(cbrt(A * B * C)));
    }

    return 0;
}
