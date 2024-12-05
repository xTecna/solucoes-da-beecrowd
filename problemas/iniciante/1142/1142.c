#include <stdio.h>

int main()
{
    int N;

    scanf("%d", &N);

    for (int i = 1; i < 4 * N; i += 4)
    {
        printf("%d %d %d PUM\n", i, i + 1, i + 2);
    }

    return 0;
}