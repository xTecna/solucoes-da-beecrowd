#include <stdio.h>

int main()
{
    int N;
    char hamekame[500];

    scanf("%d\n", &N);

    for (int i = 0; i < N; ++i)
    {
        scanf("%s\n", &hamekame);

        int j = 0;
        int tamanho1 = 0;
        while (hamekame[j] != 'a')
        {
            j += 1;
        }
        while (hamekame[j] == 'a')
        {
            tamanho1 += 1;
            j += 1;
        }
        while (hamekame[j] != 'a')
        {
            j += 1;
        }
        int tamanho2 = 0;
        while (hamekame[j] == 'a')
        {
            tamanho2 += 1;
            j += 1;
        }

        printf("k");
        for (int j = 0; j < tamanho1 * tamanho2; ++j)
        {
            printf("a");
        }
        printf("\n");
    }

    return 0;
}