#include <stdio.h>

int main()
{
    char jogador1[150], jogada1[10], jogador2[150], jogada2[10];
    int QT, N, M;

    scanf("%d\n", &QT);
    for (int i = 0; i < QT; ++i)
    {
        scanf("%s %s %s %s\n", &jogador1, &jogada1, &jogador2, &jogada2);
        scanf("%d %d\n", &N, &M);

        int soma = N + M;
        char jogadaGanha[10];
        if (soma % 2)
        {
            strcpy(jogadaGanha, "IMPAR");
        }
        else
        {
            strcpy(jogadaGanha, "PAR");
        }

        if (strcmp(jogada1, jogadaGanha) == 0)
        {
            printf("%s\n", jogador1);
        }
        else
        {
            printf("%s\n", jogador2);
        }
    }

    return 0;
}