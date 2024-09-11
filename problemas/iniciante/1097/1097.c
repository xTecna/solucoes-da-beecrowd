#include <stdio.h>

int main()
{
    int k = 7;
    for (int i = 1; i < 10; i += 2, k += 2)
    {
        for (int j = k; j > k - 3; --j)
        {
            printf("I=%d J=%d\n", i, j);
        }
    }

    return 0;
}