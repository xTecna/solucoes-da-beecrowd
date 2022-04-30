#include <stdio.h>

int main()
{
    double nota, nota1, nota2;

    nota1 = -1.0, nota2 = -1.0;
    while (nota2 == -1.0)
    {
        scanf("%lf", &nota);

        if (nota >= 0.0 && nota <= 10.0)
        {
            if (nota1 == -1.0)
            {
                nota1 = nota;
            }
            else
            {
                nota2 = nota;
            }
        }
        else
        {
            printf("nota invalida\n");
        }
    }

    printf("media = %.2lf\n", (nota1 + nota2) / 2);

    return 0;
}