#include <stdio.h>

int main()
{
    int idade, soma, contador;

    soma = 0;
    contador = 0;
    while (scanf("%d", &idade) != EOF)
    {
        if (idade < 0)
        {
            break;
        }

        soma += idade;
        ++contador;
    }

    printf("%.2lf\n", (double)soma / contador);

    return 0;
}