#include <stdio.h>

int main()
{
    int T, N, idade, resposta;

    scanf("%d", &T);

    for (int k = 0; k < T; ++k)
    {
        scanf("%d", &N);

        for (int i = 0; i < N / 2; ++i)
        {
            scanf("%d", &idade);
        }
        scanf("%d", &resposta);
        for (int i = N / 2 + 1; i < N; ++i)
        {
            scanf("%d", &idade);
        }

        printf("Case %d: %d\n", k + 1, resposta);
    }

    return 0;
}
