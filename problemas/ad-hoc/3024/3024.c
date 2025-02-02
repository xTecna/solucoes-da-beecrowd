#include <stdio.h>

int main()
{
    int n, x, anterior, atual;

    scanf("%d %d\n", &n, &x);

    scanf("%d", &anterior);
    int resposta = 1;
    int acumulado = 1;
    for (int i = 1; i < n; ++i)
    {
        scanf("%d", &atual);

        if (atual - anterior <= x)
        {
            acumulado += 1;
        }
        else
        {
            if (acumulado > resposta)
            {
                resposta = acumulado;
            }
            acumulado = 1;
        }

        anterior = atual;
    }

    if (acumulado > resposta)
    {
        resposta = acumulado;
    }

    printf("%d\n", resposta);

    return 0;
}