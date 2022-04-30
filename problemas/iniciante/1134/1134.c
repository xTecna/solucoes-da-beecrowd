#include <stdio.h>

int main()
{
    int codigo, alcool, gasolina, diesel;

    alcool = 0, gasolina = 0, diesel = 0;
    while (scanf("%d", &codigo) != EOF)
    {
        if (codigo == 4)
        {
            break;
        }

        switch (codigo)
        {
        case 1:
            ++alcool;
            break;
        case 2:
            ++gasolina;
            break;
        case 3:
            ++diesel;
            break;
        default:
            break;
        }
    }

    printf("MUITO OBRIGADO\n");
    printf("Alcool: %d\n", alcool);
    printf("Gasolina: %d\n", gasolina);
    printf("Diesel: %d\n", diesel);

    return 0;
}