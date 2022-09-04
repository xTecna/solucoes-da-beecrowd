#include <stdio.h>

int main()
{
    int N, H, anterior;

    scanf("%d", &N);

    scanf("%d", &anterior);
    int pico = 0, vale = 0, mesmoPadrao = 1;
    for (int i = 0; i < N - 1; ++i)
    {
        scanf("%d", &H);

        if (H > anterior && !pico)
        {
            pico = 1;
            vale = 0;
        }
        else if (H < anterior && !vale)
        {
            pico = 0;
            vale = 1;
        }
        else
        {
            mesmoPadrao = 0;
            break;
        }

        anterior = H;
    }

    printf("%d\n", mesmoPadrao);

    return 0;
}