#include <string.h>
#include <stdio.h>

int regras[3][3] = {
    {0, 1, -1},  // pedra
    {-1, 0, -1}, // papel
    {1, 1, 0},   // ataque aereo
};

int converte(char *jogada)
{
    if (strcmp(jogada, "pedra") == 0)
    {
        return 0;
    }
    if (strcmp(jogada, "papel") == 0)
    {
        return 1;
    }
    return 2;
}

int main()
{
    int N;
    char jogada1[10], jogada2[10];

    scanf("%d\n", &N);
    for (int i = 0; i < N; ++i)
    {
        scanf("%s\n%s\n", &jogada1, &jogada2);
        int j1 = converte(jogada1), j2 = converte(jogada2);

        if (regras[j1][j2] == 0)
        {
            switch (j1)
            {
            case 0:
                printf("Sem ganhador\n");
                break;
            case 1:
                printf("Ambos venceram\n");
                break;
            case 2:
                printf("Aniquilacao mutua\n");
                break;
            }
        }
        else
        {
            printf("Jogador %d venceu\n", regras[j1][j2] == 1 ? 1 : 2);
        }
    }

    return 0;
}