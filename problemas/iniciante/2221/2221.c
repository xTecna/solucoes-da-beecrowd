#include <stdio.h>

double valorGolpe(int ataque, int defesa, int nivel, int bonus)
{
    return (ataque + defesa) / 2.0 + bonus * (1 - (nivel % 2));
}

int main()
{
    int T, B, Ai, Di, Li;
    double golpeDabriel, golpeGuarte;

    scanf("%d\n", &T);
    for (int i = 0; i < T; ++i)
    {
        scanf("%d\n", &B);

        scanf("%d %d %d\n", &Ai, &Di, &Li);
        golpeDabriel = valorGolpe(Ai, Di, Li, B);

        scanf("%d %d %d\n", &Ai, &Di, &Li);
        golpeGuarte = valorGolpe(Ai, Di, Li, B);

        if (golpeDabriel > golpeGuarte)
        {
            printf("Dabriel\n");
        }
        else if (golpeGuarte > golpeDabriel)
        {
            printf("Guarte\n");
        }
        else
        {
            printf("Empate\n");
        }
    }

    return 0;
}