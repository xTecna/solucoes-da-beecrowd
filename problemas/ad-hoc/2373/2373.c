#include <stdio.h>

int main()
{
    int N, L, C, resposta;

    scanf("%d", &N);

    resposta = 0;
    for (int i = 0; i < N; ++i)
    {
        scanf("%d %d", &L, &C);

        if (L > C)
            resposta += C;
    }

    printf("%d\n", resposta);

    return 0;
}