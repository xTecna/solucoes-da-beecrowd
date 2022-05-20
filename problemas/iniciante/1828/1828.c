#include <stdio.h>

int regras[5][5] = {
    {0, 1, -1, 1, -1}, // Tesoura
    {-1, 0, 1, -1, 1}, // Papel
    {1, -1, 0, 1, -1}, // Pedra
    {-1, 1, -1, 0, 1}, // Lagarto
    {1, -1, 1, -1, 0}  // Spock
};

int indice(char *jogada)
{
    if (strcmp(jogada, "tesoura") == 0)
    {
        return 0;
    }
    else if (strcmp(jogada, "papel") == 0)
    {
        return 1;
    }
    else if (strcmp(jogada, "pedra") == 0)
    {
        return 2;
    }
    else if (strcmp(jogada, "lagarto") == 0)
    {
        return 3;
    }
    else if (strcmp(jogada, "Spock") == 0)
    {
        return 4;
    }
}

int main()
{
    int T;
    char sheldon[10], raj[10];

    scanf("%d\n", &T);
    for (int i = 1; i <= T; ++i)
    {
        scanf("%s %s\n", &sheldon, &raj);

        int i_sheldon = indice(sheldon);
        int i_raj = indice(raj);

        printf("Caso #%d: ", i);
        switch (regras[i_sheldon][i_raj])
        {
        case -1:
            printf("Raj trapaceou!\n");
            break;
        case 0:
            printf("De novo!\n");
            break;
        case 1:
            printf("Bazinga!\n");
            break;
        }
    }

    return 0;
}