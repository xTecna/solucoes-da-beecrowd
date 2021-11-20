#include <stdlib.h>
#include <string.h>
#include <stdio.h>

struct Camiseta
{
    char nome[100], cor[10], tamanho[10];
};

int comp(const void *a, const void *b)
{
    struct Camiseta *cA = (struct Camiseta *)a;
    struct Camiseta *cB = (struct Camiseta *)b;

    if (strcmp(cA->cor, cB->cor) == 0)
    {
        if (strcmp(cA->tamanho, cB->tamanho) == 0)
        {
            return strcmp(cA->nome, cB->nome);
        }
        return -strcmp(cA->tamanho, cB->tamanho);
    }
    return strcmp(cA->cor, cB->cor);
}

int main()
{
    int N, first;
    struct Camiseta camisetas[60];

    first = 1;
    while (scanf("%d\n", &N))
    {
        if (!N)
            break;

        if (first)
            first = 0;
        else
            printf("\n");

        for (int i = 0; i < N; ++i)
        {
            scanf("%[^\n]\n", &(camisetas[i].nome));
            scanf("%s %s\n", &(camisetas[i].cor), &(camisetas[i].tamanho));
        }

        qsort(camisetas, N, sizeof(struct Camiseta), comp);

        for (int i = 0; i < N; ++i)
        {
            printf("%s %s %s\n", camisetas[i].cor, camisetas[i].tamanho, camisetas[i].nome);
        }
    }

    return 0;
}
