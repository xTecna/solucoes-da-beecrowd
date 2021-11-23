#include <stdio.h>

int converte(int numero)
{
    int potencia = 1, p = 2, resposta = 0;

    while (numero)
    {
        resposta += potencia * (numero % 10);

        numero /= 10;
        potencia *= p++;
    }

    return resposta;
}

int main()
{
    int numero;

    while (scanf("%d", &numero))
    {
        if (!numero)
            break;

        printf("%d\n", converte(numero));
    }

    return 0;
}
