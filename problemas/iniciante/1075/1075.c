#include <stdio.h>

int main()
{
    int N;

    scanf("%d\n", &N);

    for (int i = 2; i < 10000; i += N)
    {
        printf("%d\n", i);
    }

    return 0;
}