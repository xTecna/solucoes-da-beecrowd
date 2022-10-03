#include <stdlib.h>
#include <stdio.h>

int max(int a, int b)
{
    return a > b ? a : b;
}

void imprimeLinha()
{
    for (int i = 0; i < 39; ++i)
    {
        printf("-");
    }
    printf("\n");
}

void imprimeMeio(char *texto, int indice)
{
    printf("|");
    for (int i = 0; i < indice - 2; ++i)
    {
        printf(" ");
    }
    printf("%s", texto);
    int resto = 37 - max(0, indice - 2) - strlen(texto);
    for (int i = 0; i < resto; ++i)
    {
        printf(" ");
    }
    printf("|\n");
}

int main()
{
    imprimeLinha();
    imprimeMeio("Roberto", 10);
    imprimeMeio("", 1);
    imprimeMeio("5786", 10);
    imprimeMeio("", 1);
    imprimeMeio("UNIFEI", 10);
    imprimeLinha();

    return 0;
}