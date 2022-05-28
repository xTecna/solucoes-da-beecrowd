#include <stdio.h>

int N, M, blocos[25], mochila[1000001];

int min(int a, int b)
{
    return a < b ? a : b;
}

int calculaMochila()
{
    for (int i = 1; i <= M; ++i)
    {
        mochila[i] = -1;
    }
    mochila[0] = 0;

    for (int i = 0; i < N; ++i)
    {
        int bloco = blocos[i];

        for (int j = bloco; j <= M; ++j)
        {
            if (mochila[j - bloco] != -1)
            {
                if (mochila[j] == -1)
                {
                    mochila[j] = mochila[j - bloco] + 1;
                }
                else
                {
                    mochila[j] = min(mochila[j], mochila[j - bloco] + 1);
                }
            }
        }
    }

    return mochila[M];
}

int main()
{
    int T;

    scanf("%d", &T);
    for (int k = 0; k < T; ++k)
    {
        scanf("%d %d", &N, &M);
        for (int i = 0; i < N; ++i)
        {
            scanf("%d", &blocos[i]);
        }

        printf("%d\n", calculaMochila());
    }

    return 0;
}