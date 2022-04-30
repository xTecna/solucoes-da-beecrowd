#include <stdio.h>

int main()
{
    double renda, devido;

    scanf("%lf", &renda);

    devido = 0;
    if (renda > 4500.00)
    {
        devido += (renda - 4500.00) * 0.28;
        renda = 4500.00;
    }
    if (renda > 3000.00)
    {
        devido += (renda - 3000.00) * 0.18;
        renda = 3000.00;
    }
    if (renda > 2000.00)
    {
        devido += (renda - 2000.00) * 0.08;
    }

    if (devido == 0.00)
    {
        printf("Isento\n");
    }
    else
    {
        printf("R$ %.2lf\n", devido);
    }

    return 0;
}