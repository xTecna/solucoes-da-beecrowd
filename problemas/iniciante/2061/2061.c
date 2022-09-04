#include <stdio.h>

int main()
{
    int N, M;
    char acao[10];

    scanf("%d %d\n", &N, &M);
    for (int i = 0; i < M; ++i)
    {
        scanf("%s\n", &acao);

        if (strcmp(acao, "fechou") == 0)
        {
            ++N;
        }
        else
        {
            --N;
        }
    }

    printf("%d\n", N);

    return 0;
}