#include <stdio.h>

int main()
{
    double S;

    S = 0.0;
    for (int i = 0; i < 20; ++i)
    {
        S += (double)(2 * i + 1) / (1 << i);
    }

    printf("%.2lf\n", S);

    return 0;
}