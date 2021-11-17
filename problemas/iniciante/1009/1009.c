#include <stdio.h>

int main()
{
    char vendedor[10];
    double salario, vendas, total;

    scanf("%s\n%lf\n%lf", &vendedor, &salario, &vendas);

    total = salario + 0.15 * vendas;

    printf("TOTAL = R$ %.2lf\n", total);

    return 0;
}