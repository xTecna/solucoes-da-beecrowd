#include <stdio.h>

int main()
{
    int N, anterior, R, resposta;

    resposta = 0;
    scanf("%d\n%d", &N, &anterior);
    for (int i = 1; i < N; ++i)
    {
        scanf("%d", &R);

        if (R < anterior)
        {
            resposta = i + 1;
            break;
        }

        anterior = R;
    }

    printf("%d\n", resposta);

    return 0;
}