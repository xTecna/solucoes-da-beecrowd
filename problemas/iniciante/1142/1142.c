#include <stdio.h>

int main()
{
    int N;

    scanf("%d", &N);

    for (int i = 0; i < N; ++i)
    {
        for (int j = 0; j < 3; ++j)
        {
            printf("%d ", 4 * i + 1 + j);
        }
        printf("PUM\n");
    }

    return 0;
}