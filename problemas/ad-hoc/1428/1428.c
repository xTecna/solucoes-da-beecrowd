#include <math.h>
#include <stdio.h>

int main()
{
    int t, n, m;

    scanf("%d\n", &t);

    for (int i = 0; i < t; ++i)
    {
        scanf("%d %d\n", &n, &m);

        printf("%.0f\n", ceil((n - 2) / 3.0) * ceil((m - 2) / 3.0));
    }

    return 0;
}