#include <stdio.h>

int main()
{
    int numero, horas;
    double valor, salario;

    scanf("%d\n%d\n%lf", &numero, &horas, &valor);

    salario = valor * horas;

    printf("NUMBER = %d\nSALARY = U$ %.2lf\n", numero, salario);

    return 0;
}