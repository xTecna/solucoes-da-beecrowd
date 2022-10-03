#include <stdio.h>

void imprimeLinhaHorizontal()
{
    for (int i = 0; i < 39; ++i)
    {
        printf("-");
    }
    printf("\n");
}

void imprimeCabecalho()
{
    imprimeLinhaHorizontal();
    printf("|  decimal  |  octal  |  Hexadecimal  |\n");
    imprimeLinhaHorizontal();
}

void imprimeLinha(int numero)
{
    printf("|%7d    |%5o    |%8X       |\n", numero, numero, numero);
}

int main()
{
    imprimeCabecalho();
    for (int i = 0; i < 16; ++i)
    {
        imprimeLinha(i);
    }
    imprimeLinhaHorizontal();

    return 0;
}