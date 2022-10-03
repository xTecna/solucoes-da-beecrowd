#include <stdio.h>

int main()
{
    char frase[50] = "AMO FAZER EXERCICIO NO URI";

    printf("<%s>\n", &frase);
    printf("<%30s>\n", &frase);
    printf("<%.20s>\n", &frase);
    printf("<%-20s>\n", &frase);
    printf("<%-30s>\n", &frase);
    printf("<%.30s>\n", &frase);
    printf("<%30.20s>\n", &frase);
    printf("<%-30.20s>\n", &frase);

    return 0;
}