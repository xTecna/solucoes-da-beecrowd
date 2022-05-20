#include <stdio.h>
#include <math.h>

int digitos(int numero)
{
    return floor(log10(numero)) + 1;
}

void imprime(int numero, int espaco_maximo)
{
    char *resultado = (char *)malloc((espaco_maximo + 1) * sizeof(char));

    int i = espaco_maximo - 1;
    while (numero > 0)
    {
        resultado[i--] = (numero % 10) + '0';
        numero /= 10;
    }
    for (; i > -1; --i)
    {
        resultado[i] = ' ';
    }
    resultado[espaco_maximo] = '\0';

    printf("%s", resultado);
    free(resultado);
}

int main()
{
    int N;

    while (scanf("%d", &N) != EOF)
    {
        if (N == 0)
        {
            break;
        }

        int limite = digitos(1 << (2 * N - 2));

        for (int i = 0; i < N; ++i)
        {
            imprime(1 << i, limite);
            for (int j = 1; j < N; ++j)
            {
                printf(" ");
                imprime(1 << (i + j), limite);
            }
            printf("\n");
        }
        printf("\n");
    }

    return 0;
}