#include <stdio.h>

int main()
{
    int B, T;

    scanf("%d\n", &B);
    scanf("%d\n", &T);

    if (B + T > 160)
    {
        printf("1\n");
    }
    else if (B + T < 160)
    {
        printf("2\n");
    }
    else
    {
        printf("0\n");
    }

    return 0;
}