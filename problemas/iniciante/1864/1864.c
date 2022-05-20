#include <string.h>
#include <stdio.h>

int main()
{
    int N;
    char resposta[35], frase[35] = "LIFE IS NOT A PROBLEM TO BE SOLVED";

    scanf("%d", &N);

    strncpy(resposta, frase, N);
    resposta[N] = '\0';
    printf("%s\n", resposta);

    return 0;
}