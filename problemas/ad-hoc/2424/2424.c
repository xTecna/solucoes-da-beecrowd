#include <stdio.h>

int main()
{
    int X, Y;

    scanf("%d %d", &X, &Y);

    printf("%s\n", (0 <= X && X <= 432 && 0 <= Y && Y <= 468) ? "dentro" : "fora");

    return 0;
}
