#include <stdio.h>

int main()
{
    int p, j1, j2, r, a;

    scanf("%d %d %d %d %d", &p, &j1, &j2, &r, &a);

    if (r)
    {
        if (a)
        {
            printf("Jogador 2 ganha!\n");
        }
        else
        {
            printf("Jogador 1 ganha!\n");
        }
    }
    else
    {
        if (a)
        {
            printf("Jogador 1 ganha!\n");
        }
        else
        {
            printf("Jogador %d ganha!\n", (j1 + j2) % 2 == (1 - p) ? 1 : 2);
        }
    }

    return 0;
}