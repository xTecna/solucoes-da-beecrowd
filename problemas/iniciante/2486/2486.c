#include <string.h>
#include <stdio.h>

char nomes[7][20] = {"suco de laranja", "morango fresco", "mamao", "goiaba vermelha", "manga", "laranja", "brocolis"};
int quantidades[7] = {120, 85, 85, 70, 56, 50, 34};

int vitaminaC(char *nome)
{
    for (int i = 0; i < 7; ++i)
    {
        if (strcmp(nome, nomes[i]) == 0)
        {
            return quantidades[i];
        }
    }
}

int main()
{
    char nome[21];
    int T, N, consumo;

    while (scanf("%d\n", &T) != EOF)
    {
        if (T == 0)
        {
            break;
        }

        consumo = 0;
        for (int k = 0; k < T; ++k)
        {
            scanf("%d %[^\n]\n", &N, &nome);
            consumo += N * vitaminaC(nome);
        }

        if (consumo < 110)
        {
            printf("Mais %d mg\n", 110 - consumo);
        }
        else if (consumo > 130)
        {
            printf("Menos %d mg\n", consumo - 130);
        }
        else
        {
            printf("%d mg\n", consumo);
        }
    }

    return 0;
}