#include <stdio.h>

int main()
{
    int N;
    double P, G, menor_preco;

    scanf("%d\n", &N);

    menor_preco = 1000.0;
    for (int i = 0; i < N; ++i)
    {
        scanf("%lf %lf\n", &P, &G);

        if (P / G < menor_preco)
        {
            menor_preco = P / G;
        }
    }

    printf("%.2lf\n", 1000.0 * menor_preco);

    return 0;
}