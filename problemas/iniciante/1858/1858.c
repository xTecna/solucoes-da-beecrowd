#include <stdio.h>

int main()
{
    int N, T, menor, resposta;

    scanf("%d", &N);

    scanf("%d", &T);

    menor = T;
    resposta = 1;
    for (int i = 1; i < N; ++i)
    {
        scanf("%d", &T);

        if (T < menor)
        {
            menor = T;
            resposta = i + 1;
        }
    }

    printf("%d\n", resposta);

    return 0;
}