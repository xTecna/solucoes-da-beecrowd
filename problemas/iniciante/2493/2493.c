#include <stdlib.h>
#include <string.h>
#include <stdio.h>

int soma(int *expressao)
{
    return expressao[0] + expressao[1] == expressao[2];
}

int subtracao(int *expressao)
{
    return expressao[0] - expressao[1] == expressao[2];
}

int multiplicacao(int *expressao)
{
    return expressao[0] * expressao[1] == expressao[2];
}

int compare(const void *a, const void *b)
{
    return strcmp((char *)a, (char *)b);
}

int main()
{
    int T, E, expressao[50][3];
    char operador, nome[101], errados[50][101];

    while (scanf("%d\n", &T) != EOF)
    {
        for (int i = 0; i < T; ++i)
        {
            scanf("%d %d=%d\n", &expressao[i][0], &expressao[i][1], &expressao[i][2]);
        }

        int n_errados = 0;
        for (int i = 0; i < T; ++i)
        {
            scanf("%s %d %c\n", &nome, &E, &operador);

            switch (operador)
            {
            case '+':
                if (!soma(expressao[E - 1]))
                {
                    strcpy(errados[n_errados++], nome);
                }
                break;
            case '-':
                if (!subtracao(expressao[E - 1]))
                {
                    strcpy(errados[n_errados++], nome);
                }
                break;
            case '*':
                if (!multiplicacao(expressao[E - 1]))
                {
                    strcpy(errados[n_errados++], nome);
                }
                break;
            case 'I':
                if (soma(expressao[E - 1]) || subtracao(expressao[E - 1]) || multiplicacao(expressao[E - 1]))
                {
                    strcpy(errados[n_errados++], nome);
                }
                break;
            }
        }

        if (n_errados == 0)
        {
            printf("You Shall All Pass!\n");
        }
        else if (n_errados == T)
        {
            printf("None Shall Pass!\n");
        }
        else
        {
            qsort(errados, n_errados, sizeof(char) * 101, compare);
            printf("%s", errados[0]);
            for (int i = 1; i < n_errados; ++i)
            {
                printf(" %s", errados[i]);
            }
            printf("\n");
        }
    }

    return 0;
}