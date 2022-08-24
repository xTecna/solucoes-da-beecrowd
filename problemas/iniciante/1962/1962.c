#include <stdio.h>

int main()
{
    int N, T;

    scanf("%d", &N);
    for (int i = 0; i < N; ++i)
    {
        scanf("%d", &T);

        T = 2015 - T;

        if (T <= 0)
        {
            printf("%d A.C.\n", 1 - T);
        }
        else
        {
            printf("%d D.C.\n", T);
        }
    }

    return 0;
}