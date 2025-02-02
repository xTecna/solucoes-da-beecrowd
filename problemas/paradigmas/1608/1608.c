#include <stdio.h>

int main()
{
    int T, D, I, B, Q, a, b, precos[100];

    scanf("%d", &T);

    for (int k = 0; k < T; ++k)
    {
        scanf("%d %d %d", &D, &I, &B);

        for (int i = 0; i < I; ++i)
        {
            scanf("%d", &precos[i]);
        }

        int resposta = 0;
        for (int i = 0; i < B; ++i)
        {
            scanf("%d", &Q);

            int custo = 0;
            for (int j = 0; j < Q; ++j)
            {
                scanf("%d %d", &a, &b);

                custo += precos[a] * b;
            }

            resposta = resposta < D / custo ? D / custo : resposta;
        }

        printf("%d\n", resposta);
    }

    return 0;
}