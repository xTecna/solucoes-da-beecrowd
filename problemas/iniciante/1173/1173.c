#include <stdio.h>

int main()
{
    int V;

    scanf("%d", &V);

    int produto = V;
    for (int i = 0; i < 10; ++i)
    {
        printf("N[%d] = %d\n", i, produto);
        produto <<= 1;
    }

    return 0;
}