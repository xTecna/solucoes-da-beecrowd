#include <stdio.h>

int main()
{
    int n, ano, tempo, menor_ano;
    char planeta[100], resposta[100];

    while (1)
    {
        scanf("%d\n", &n);
        if (n == 0)
        {
            break;
        }

        menor_ano = 9999;
        for (int i = 0; i < n; ++i)
        {
            scanf("%s %d %d\n", &planeta, &ano, &tempo);

            if (ano - tempo < menor_ano)
            {
                strcpy(resposta, planeta);
                menor_ano = ano - tempo;
            }
        }

        printf("%s\n", resposta);
    }

    return 0;
}