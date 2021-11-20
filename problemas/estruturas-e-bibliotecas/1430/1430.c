#include <string.h>
#include <stdio.h>

double duracaoNota(char nota)
{
    switch (nota)
    {
    case 'W':
        return 1.0;
    case 'H':
        return 0.5;
    case 'Q':
        return 0.25;
    case 'E':
        return 0.125;
    case 'S':
        return 0.0625;
    case 'T':
        return 0.03125;
    case 'X':
        return 0.015625;
    }
}

int main()
{
    int resposta;
    double duracao;
    char composicao[1000];

    while (scanf("%[^\n]\n", &composicao) != EOF)
    {
        if (strcmp(composicao, "*") == 0)
            break;

        resposta = 0;
        duracao = 0.0;
        for (int i = 0; i < strlen(composicao); ++i)
        {
            if (composicao[i] == '/')
            {
                if (duracao == 1.0)
                    ++resposta;
                duracao = 0.0;
            }
            else
            {
                duracao += duracaoNota(composicao[i]);
            }
        }

        printf("%d\n", resposta);
    }

    return 0;
}
