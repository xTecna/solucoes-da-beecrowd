#include <stdio.h>

int main()
{
    double total;
    int codigo, quantidade;

    scanf("%d %d", &codigo, &quantidade);

    switch (codigo)
    {
    case 1:
        total = quantidade * 4.00;
        break;
    case 2:
        total = quantidade * 4.50;
        break;
    case 3:
        total = quantidade * 5.00;
        break;
    case 4:
        total = quantidade * 2.00;
        break;
    case 5:
        total = quantidade * 1.50;
        break;
    }

    printf("Total: R$ %.2lf\n", total);

    return 0;
}