#include <stdlib.h>
#include <stdio.h>

void imprime(char *nome, int *vetor, int n)
{
    for (int i = 0; i < n; ++i)
    {
        printf("%s[%d] = %d\n", nome, i, vetor[i]);
    }
}

int main()
{
    int valor, par[5], impar[5], n_par, n_impar;

    n_par = 0;
    n_impar = 0;
    for (int i = 0; i < 15; ++i)
    {
        scanf("%d", &valor);

        if (abs(valor) % 2)
        {
            impar[n_impar++] = valor;

            if (n_impar == 5)
            {
                imprime("impar", impar, n_impar);
                n_impar = 0;
            }
        }
        else
        {
            par[n_par++] = valor;

            if (n_par == 5)
            {
                imprime("par", par, n_par);
                n_par = 0;
            }
        }
    }

    imprime("impar", impar, n_impar);
    imprime("par", par, n_par);

    return 0;
}