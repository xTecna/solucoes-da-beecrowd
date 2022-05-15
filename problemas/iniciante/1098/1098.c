#include <stdio.h>

int main()
{
    for (double i = 0; i <= 2; i += 0.2)
    {
        for (int j = 1; j <= 3; ++j)
        {
            printf("I=%g J=%g\n", i, j + i);
        }
    }

    return 0;
}