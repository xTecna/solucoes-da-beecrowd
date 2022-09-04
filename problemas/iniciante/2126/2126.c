#include <stdio.h>

int main()
{
    int k = 0;
    char N1[50], N2[50];

    while (scanf("%s\n%s\n", &N1, &N2) != EOF)
    {
        int qtd = 0, pos = -1;
        char *p = strstr(N2, N1);
        while (p != NULL)
        {
            ++qtd;
            pos = p - N2;
            p = strstr(p + 1, N1);
        }

        printf("Caso #%d:\n", ++k);
        if (qtd == 0)
        {
            printf("Nao existe subsequencia\n\n");
        }
        else
        {
            printf("Qtd.Subsequencias: %d\n", qtd);
            printf("Pos: %d\n\n", pos + 1);
        }
    }

    return 0;
}