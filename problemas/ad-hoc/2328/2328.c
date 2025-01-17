#include <stdio.h>

int main()
{
    int N, x, resposta;

    scanf("%d\n", &N);

    resposta = 0;
    for (int i = 0; i < N; ++i)
    {
        scanf("%d", &x);
        resposta += x;
    }

    printf("%d\n", resposta - N);

    return 0;
}