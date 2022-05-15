#include <stdio.h>

int main()
{
    double S = 0.0;
    for (int i = 1; i < 101; ++i)
    {
        S += 1.0 / i;
    }
    printf("%.2lf\n", S);

    return 0;
}