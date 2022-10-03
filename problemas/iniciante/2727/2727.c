#include <stdio.h>

int main()
{
    int N;
    char frase[1001];

    while (scanf("%d\n", &N) != EOF)
    {
        for (int i = 0; i < N; ++i)
        {
            scanf("%[^\n]\n", &frase);

            int qtd = 0, tamanho = 0;
            char *p = strtok(frase, " ");
            while (p != NULL)
            {
                ++qtd;
                tamanho = strlen(p);

                p = strtok(NULL, " ");
            }

            printf("%c\n", 'a' + (3 * (qtd - 1) + tamanho - 1));
        }
    }

    return 0;
}