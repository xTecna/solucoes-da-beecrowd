#include <stdio.h>

int main()
{
    int porcoes[5];

    for (int i = 0; i < 5; ++i)
    {
        scanf("%d", &porcoes[i]);
    }

    printf("%d\n", porcoes[0] * 300 + porcoes[1] * 1500 + porcoes[2] * 600 + porcoes[3] * 1000 + porcoes[4] * 150 + 225);

    return 0;
}