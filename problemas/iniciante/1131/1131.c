#include <stdio.h>

int main()
{
    int codigo, pt_inter, pt_gremio, inter, gremio, empate;

    inter = 0;
    gremio = 0;
    empate = 0;
    while (scanf("%d %d", &pt_inter, &pt_gremio) != EOF)
    {
        if (pt_inter > pt_gremio)
        {
            ++inter;
        }
        else if (pt_inter == pt_gremio)
        {
            ++empate;
        }
        else
        {
            ++gremio;
        }

        printf("Novo grenal (1-sim 2-nao)\n");
        scanf("%d", &codigo);
        if (codigo != 1)
        {
            break;
        }
    }

    printf("%d grenais\n", inter + gremio + empate);
    printf("Inter:%d\n", inter);
    printf("Gremio:%d\n", gremio);
    printf("Empates:%d\n", empate);

    if (inter > gremio)
    {
        printf("Inter venceu mais\n");
    }
    else if (inter == gremio)
    {
        printf("Nao houve vencedor\n");
    }
    else
    {
        printf("Gremio venceu mais\n");
    }

    return 0;
}