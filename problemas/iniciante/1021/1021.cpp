#include <cstdio>

int main()
{
    int notas[] = {10000, 5000, 2000, 1000, 500, 200};
    int moedas[] = {100, 50, 25, 10, 5, 1};
    int reais, centavos;

    scanf("%d.%d", &reais, &centavos);
    reais = 100 * reais + centavos;

    printf("NOTAS:\n");
    for (int i = 0; i < 6; ++i)
    {
        printf("%d nota(s) de R$ %.2lf\n", reais / notas[i], notas[i] / 100.0);
        reais %= notas[i];
    }

    printf("MOEDAS:\n");
    for (int i = 0; i < 6; ++i)
    {
        printf("%d moeda(s) de R$ %.2lf\n", reais / moedas[i], moedas[i] / 100.0);
        reais %= moedas[i];
    }

    return 0;
}