#include <string.h>
#include <stdio.h>

int converte(char *linha)
{
    int soma = 0, n = strlen(linha);

    for (int i = 0; i < n; ++i)
    {
        if (linha[i] == '*')
        {
            soma += 1 << (n - i - 1);
        }
    }

    return soma;
}

int main()
{
    int soma = 0;
    char linha[10];

    while (scanf("%[^\n]\n", &linha) != EOF)
    {
        if (strcmp(linha, "caw caw") == 0)
        {
            printf("%d\n", soma);
            soma = 0;
        }
        else
        {
            soma += converte(linha);
        }
    }

    return 0;
}