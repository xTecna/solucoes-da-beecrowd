#include <stdio.h>

int main()
{
    int L, C;

    scanf("%d %d", &L, &C);
    printf("%d\n", !((L % 2) ^ (C % 2)));

    return 0;
}