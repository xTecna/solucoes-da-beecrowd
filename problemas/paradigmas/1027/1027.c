#include <stdlib.h>
#include <stdio.h>

struct Ponto
{
    int x;
    int y;
};

int max(int a, int b)
{
    return a > b ? a : b;
}

int comp(const void *a, const void *b)
{
    return ((struct Ponto *)a)->x - ((struct Ponto *)b)->x;
}

int main()
{
    int N, DP[1000][2];
    struct Ponto pontos[1000];

    while (scanf("%d", &N) != EOF)
    {
        for (int i = 0; i < N; ++i)
        {
            scanf("%d %d", &(pontos[i].x), &(pontos[i].y));
        }
        qsort(pontos, N, sizeof(struct Ponto), comp);

        DP[0][0] = 1;
        DP[0][1] = 1;
        int resposta = 1;
        for (int i = 1; i < N; ++i)
        {
            DP[i][0] = 1;
            DP[i][1] = 1;
            for (int j = 0; j < i; ++j)
            {
                if (pontos[i].x == pontos[j].x)
                {
                    break;
                }

                if (pontos[i].y - pontos[j].y == 2)
                {
                    // Descendo, acrescentando mais um no caso em que j está acima
                    DP[i][1] = max(DP[i][1], DP[j][0] + 1);
                }
                else if (pontos[i].y - pontos[j].y == -2)
                {
                    // Subindo, acrescentando mais um no caso em que j está abaixo
                    DP[i][0] = max(DP[i][0], DP[j][1] + 1);
                }
            }

            resposta = max(resposta, max(DP[i][0], DP[i][1]));
        }

        printf("%d\n", resposta);
    }

    return 0;
}