#include <stdlib.h>
#include <stdio.h>

int comp(const void *a, const void *b)
{
    return *(int *)b - *(int *)a;
}

int main()
{
    int N, K;
    int pontos[1001];

    scanf("%d\n%d\n", &N, &K);
    for (int i = 0; i < N; ++i)
    {
        scanf("%d\n", &pontos[i]);
    }
    qsort(pontos, N, sizeof(int), comp);

    int resposta = K;
    while (resposta < N && pontos[resposta] == pontos[K - 1])
    {
        ++resposta;
    }

    printf("%d\n", resposta);

    return 0;
}