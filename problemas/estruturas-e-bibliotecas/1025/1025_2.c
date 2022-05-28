#include <string.h>
#include <stdio.h>

int main()
{
    int T, N, Q, x, consulta, marmores[10000];

    T = 0;
    while (scanf("%d %d", &N, &Q))
    {
        if (!N && !Q)
        {
            break;
        }

        memset(marmores, 0, sizeof(marmores));

        for (int i = 0; i < N; ++i)
        {
            scanf("%d", &x);

            marmores[x] += 1;
        }

        for (int i = 1; i < 10000; ++i)
        {
            marmores[i] += marmores[i - 1];
        }

        printf("CASE# %d:\n", ++T);
        for (int i = 0; i < Q; ++i)
        {
            scanf("%d", &consulta);

            if (marmores[consulta] == marmores[consulta - 1])
            {
                printf("%d not found\n", consulta);
            }
            else
            {
                printf("%d found at %d\n", consulta, marmores[consulta - 1] + 1);
            }
        }
    }

    return 0;
}
