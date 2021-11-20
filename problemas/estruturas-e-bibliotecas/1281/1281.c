#include <string.h>
#include <stdio.h>

int main()
{
    int N, M, P, quantidade;
    char fruta[50], frutas[100][50];
    double resposta, precos[100];

    scanf("%d", &N);

    for (int k = 0; k < N; ++k)
    {
        scanf("%d", &M);

        for (int i = 0; i < M; ++i)
        {
            scanf("%s %lf\n", &frutas[i], &precos[i]);
        }

        scanf("%d", &P);

        resposta = 0.0;
        for (int i = 0; i < P; ++i)
        {
            scanf("%s %d\n", &fruta, &quantidade);

            for (int j = 0; j < M; ++j)
            {
                if (strcmp(fruta, frutas[j]) == 0)
                {
                    resposta += quantidade * precos[j];
                    break;
                }
            }
        }

        printf("R$ %.2lf\n", resposta);
    }

    return 0;
}
