#include <string.h>
#include <stdio.h>

int valor(char simbolo){
    switch(simbolo){
        case '-':   return 0;
        case '*':   return 1;
    }
}

int converte(char *numero)
{
    int potencia = 1, resposta = 0;

    for(int i = strlen(numero) - 1; i > -1; --i){
        resposta += valor(numero[i]) * potencia;
        potencia *= 2;
    }

    return resposta;
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