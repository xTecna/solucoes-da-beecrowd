#include <stdio.h>

int main()
{
    int N, Quantia, coelhos, ratos, sapos, total;
    char Tipo;

    scanf("%d\n", &N);

    coelhos = 0, ratos = 0, sapos = 0;
    for (int i = 0; i < N; ++i)
    {
        scanf("%d %c\n", &Quantia, &Tipo);

        switch (Tipo)
        {
        case 'C':
            coelhos += Quantia;
            break;
        case 'R':
            ratos += Quantia;
            break;
        case 'S':
            sapos += Quantia;
            break;
        }
    }
    total = coelhos + ratos + sapos;

    printf("Total: %d cobaias\n", total);
    printf("Total de coelhos: %d\n", coelhos);
    printf("Total de ratos: %d\n", ratos);
    printf("Total de sapos: %d\n", sapos);
    printf("Percentual de coelhos: %.2lf %%\n", (double)coelhos / total * 100);
    printf("Percentual de ratos: %.2lf %%\n", (double)ratos / total * 100);
    printf("Percentual de sapos: %.2lf %%\n", (double)sapos / total * 100);

    return 0;
}