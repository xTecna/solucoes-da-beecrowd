#include <stdio.h>

int main()
{
    int X, Z;

    scanf("%d", &X);
    while (scanf("%d", &Z) != EOF)
    {
        if (Z > X)
        {
            break;
        }
    }

    int resposta = 1, soma = X;
    while (soma <= Z)
    {
        soma += X + resposta;
        ++resposta;
    }

    printf("%d\n", resposta);

    return 0;
}