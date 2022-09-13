#include <stdio.h>

struct data
{
    int dia;
    int mes;
    int ano;
};

int main()
{
    int N, D, p, dia, mes, ano;
    struct data entrada, melhorData;

    while (scanf("%d %d", &N, &D) != EOF)
    {
        melhorData.dia = 0, melhorData.mes = 0, melhorData.ano = 0;
        for (int i = 0; i < D; ++i)
        {
            scanf("%d/%d/%d", &(entrada.dia), &(entrada.mes), &(entrada.ano));

            int pessoas = 0;
            for (int j = 0; j < N; ++j)
            {
                scanf(" %d", &p);
                pessoas += p;
            }

            if (pessoas == N && melhorData.dia == 0)
            {
                melhorData = entrada;
            }
        }

        if (melhorData.dia == 0)
        {
            printf("Pizza antes de FdI\n");
        }
        else
        {
            printf("%d/%d/%d\n", melhorData.dia, melhorData.mes, melhorData.ano);
        }
    }

    return 0;
}