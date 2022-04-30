#include <stdio.h>

int main()
{
    int N, numero, menor, posicao;

    scanf("%d", &N);

    scanf("%d", &menor);
    posicao = 0;

    for (int i = 1; i < N; ++i)
    {
        scanf("%d", &numero);

        if (numero < menor)
        {
            menor = numero;
            posicao = i;
        }
    }

    printf("Menor valor: %d\n", menor);
    printf("Posicao: %d\n", posicao);

    return 0;
}