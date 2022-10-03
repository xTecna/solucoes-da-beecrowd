#include <string.h>
#include <stdio.h>

int main()
{
    char instrucao[10];
    int t, jipes, pessoas;

    jipes = pessoas = 0;
    while (scanf("%s ", &instrucao))
    {
        if (strcmp(instrucao, "ABEND") == 0)
            break;

        scanf("%d\n", &t);

        if (strcmp(instrucao, "SALIDA") == 0)
        {
            pessoas += t;
            ++jipes;
        }
        else
        {
            pessoas -= t;
            --jipes;
        }
    }

    printf("%d\n%d\n", pessoas, jipes);

    return 0;
}