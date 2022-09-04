#include <stdio.h>

int mapa[101][101];

int segura(int x, int y)
{
    return mapa[x][y] + mapa[x + 1][y] + mapa[x][y + 1] + mapa[x + 1][y + 1] >= 2;
}

int main()
{
    int N;

    scanf("%d", &N);
    for (int i = 0; i < N + 1; ++i)
    {
        for (int j = 0; j < N + 1; ++j)
        {
            scanf("%d", &mapa[i][j]);
        }
    }

    for (int i = 0; i < N; ++i)
    {
        for (int j = 0; j < N; ++j)
        {
            printf("%c", segura(i, j) ? 'S' : 'U');
        }
        printf("\n");
    }

    return 0;
}