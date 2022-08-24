#include <stdio.h>

int main()
{
    int S, T, F;

    scanf("%d %d %d", &S, &T, &F);
    printf("%d\n", (24 + S + T + F) % 24);

    return 0;
}