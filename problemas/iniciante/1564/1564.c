#include <stdio.h>

int main()
{
    int N;

    while (scanf("%d", &N) != EOF)
    {
        printf("vai ter %s!\n", N == 0 ? "copa" : "duas");
    }

    return 0;
}