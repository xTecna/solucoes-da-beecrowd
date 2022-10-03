#include <stdio.h>

void imprimeLinha()
{
    for (int i = 0; i < 39; ++i)
    {
        printf("-");
    }
    printf("\n");
}

void imprimeMeio()
{
    printf("|");
    for (int i = 0; i < 37; ++i)
    {
        printf(" ");
    }
    printf("|\n");
}

int main()
{
    imprimeLinha();
    for (int i = 0; i < 5; ++i)
    {
        imprimeMeio();
    }
    imprimeLinha();

    return 0;
}