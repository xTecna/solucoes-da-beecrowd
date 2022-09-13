#include <stdio.h>

int main()
{
    int N, voto, votos;

    while (scanf("%d", &N) != EOF)
    {
        votos = 0;

        for (int i = 0; i < N; ++i)
        {
            scanf("%d", &voto);
            votos += voto;
        }

        printf("%s\n", votos >= 2.0 * N / 3.0 ? "impeachment" : "acusacao arquivada");
    }

    return 0;
}