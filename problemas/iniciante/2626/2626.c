#include <string.h>
#include <stdio.h>

int ganhou(char *jogada1, char *jogada2)
{
    return (strcmp(jogada1, "pedra") == 0 && strcmp(jogada2, "tesoura") == 0) || (strcmp(jogada1, "tesoura") == 0 && strcmp(jogada2, "papel") == 0) || (strcmp(jogada1, "papel") == 0 && strcmp(jogada2, "pedra") == 0);
}

int main()
{
    char dodo[10], leo[10], pepper[10];

    while (scanf("%s %s %s\n", &dodo, &leo, &pepper) != EOF)
    {
        if (ganhou(dodo, leo) && ganhou(dodo, pepper))
        {
            printf("Os atributos dos monstros vao ser inteligencia, sabedoria...\n");
        }
        else if (ganhou(leo, dodo) && ganhou(leo, pepper))
        {
            printf("Iron Maiden's gonna get you, no matter how far!\n");
        }
        else if (ganhou(pepper, dodo) && ganhou(pepper, leo))
        {
            printf("Urano perdeu algo muito precioso...\n");
        }
        else
        {
            printf("Putz vei, o Leo ta demorando muito pra jogar...\n");
        }
    }

    return 0;
}