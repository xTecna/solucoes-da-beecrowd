#include <stdio.h>

int main()
{
    int D;

    scanf("%d", &D);

    if (D <= 800)
    {
        printf("1\n");
    }
    else if (D <= 1400)
    {
        printf("2\n");
    }
    else
    {
        printf("3\n");
    }

    return 0;
}