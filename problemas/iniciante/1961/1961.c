#include <stdio.h>

int main()
{
    int P, N, anterior, atual, resposta;

    scanf("%d %d", &P, &N);

    scanf("%d", &anterior);
    resposta = 1;
    for (int i = 1; i < N; ++i)
    {
        scanf("%d", &atual);

        resposta &= (abs(atual - anterior) <= P);
        anterior = atual;
    }

    printf("%s\n", resposta ? "YOU WIN" : "GAME OVER");

    return 0;
}