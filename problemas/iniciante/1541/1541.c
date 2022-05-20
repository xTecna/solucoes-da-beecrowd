#include <stdio.h>
#include <math.h>

int main()
{
    int A, B, C;

    while (scanf("%d", &A) != EOF)
    {
        if (A == 0)
        {
            break;
        }

        scanf("%d %d", &B, &C);
        printf("%.0lf\n", floor(sqrt(A * B * 100.0 / C)));
    }

    return 0;
}