#include <stdio.h>

int main()
{
    double total, precos[5] = {1.5, 2.5, 3.5, 4.5, 5.5};
    int N, codigo, preco;

    scanf("%d", &N);
    total = 0.0;
    for (int i = 0; i < N; ++i)
    {
        scanf("%d %d", &codigo, &preco);

        total += preco * precos[codigo - 1001];
    }

    printf("%.2lf\n", total);

    return 0;
}