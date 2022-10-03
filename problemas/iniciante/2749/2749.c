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
    imprimeMeio("x = 35", 2);
    imprimeMeio("", 1);
    imprimeMeio("x = 35", 17);
    imprimeMeio("", 1);
    imprimeMeio("x = 35", 33);
    imprimeLinha();

    return 0;
}