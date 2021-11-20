#include <string.h>
#include <stdio.h>

int main()
{
    int PV[500];
    int J, R, pontos, maior, vencedor;

    memset(PV, 0, sizeof(PV));

    scanf("%d %d", &J, &R);

    R *= J;
    for (int i = 0; i < R; ++i)
    {
        scanf("%d", &pontos);
        PV[i % J] += pontos;
    }

    vencedor = 0;
    maior = PV[0];
    for (int i = 1; i < J; ++i)
    {
        if (PV[i] >= maior)
        {
            vencedor = i;
            maior = PV[i];
        }
    }

    printf("%d\n", vencedor + 1);

    return 0;
}
