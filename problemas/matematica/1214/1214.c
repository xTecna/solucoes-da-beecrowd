#include <stdio.h>

int main()
{
    double media, resposta;
    int C, N, alunos[1000];

    scanf("%d", &C);

    for (int k = 0; k < C; ++k)
    {
        scanf("%d", &N);

        media = 0.0;
        for (int i = 0; i < N; ++i)
        {
            scanf("%d", &alunos[i]);

            media += alunos[i];
        }

        media /= N;
        resposta = 0;
        for (int i = 0; i < N; ++i)
        {
            if (alunos[i] > media)
            {
                resposta += 1;
            }
        }

        resposta = resposta / N * 100;
        printf("%.3lf%%\n", resposta);
    }

    return 0;
}
