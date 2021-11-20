#include <string.h>
#include <stdio.h>

int main()
{
    char frase[1000];
    int posicoes[255];
    char *teclado = "`1234567890-=QWERTYUIOP[]\\ASDFGHJKL;'ZXCVBNM,./";

    for (int i = 0; i < 48; ++i)
    {
        posicoes[teclado[i]] = i;
    }

    while (gets(frase) != NULL)
    {
        for (int i = 0; i < strlen(frase); ++i)
        {
            if (frase[i] == ' ')
                printf(" ");
            else
                printf("%c", teclado[posicoes[frase[i]] - 1]);
        }
        printf("\n");
    }

    return 0;
}
