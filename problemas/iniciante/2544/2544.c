#include <stdio.h>
#include <math.h>

int main()
{
    int N;

    while (scanf("%d", &N) != EOF)
    {
        printf("%d\n", (int)(log(N) / log(2)));
    }

    return 0;
}