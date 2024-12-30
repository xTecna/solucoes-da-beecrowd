#include <stdio.h>

int main()
{
    int T, N;

    scanf("%d", &T);

    for (int i = 0; i < T; ++i)
    {
        scanf("%d", &N);

        printf("%d\n", (1 << N) - 1);
    }

    return 0;
}