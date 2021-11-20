#include <stdio.h>

int main()
{
    int A, C, anterior, atual, resposta;

    while (scanf("%d %d", &A, &C))
    {
        if (!A && !C)
            break;

        resposta = 0;
        scanf("%d", &anterior);
        for (int i = 1; i < C; ++i)
        {
            scanf("%d", &atual);

            if (atual > anterior)
            {
                resposta += atual - anterior;
            }
            anterior = atual;
        }
        resposta += A - anterior;

        printf("%d\n", resposta);
    }

    return 0;
}
