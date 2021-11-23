#include <stdio.h>

int main()
{
    int N, x, y;

    scanf("%d", &N);

    for (int i = 0; i < N; ++i)
    {
        scanf("%d %d", &x, &y);

        printf("%d cm2\n", (x * y) / 2);
    }

    return 0;
}
