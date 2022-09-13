#include <stdio.h>

int main()
{
    char nome[101];
    int N, S, B, A, S1, B1, A1;
    int saquesSucedidos = 0, bloqueiosSucedidos = 0, ataquesSucedidos = 0;
    int saquesTotais = 0, bloqueiosTotais = 0, ataquesTotais = 0;

    scanf("%d\n", &N);
    for (int i = 0; i < N; ++i)
    {
        scanf("%s\n", &nome);

        scanf("%d %d %d\n", &S, &B, &A);
        saquesTotais += S;
        bloqueiosTotais += B;
        ataquesTotais += A;

        scanf("%d %d %d\n", &S1, &B1, &A1);
        saquesSucedidos += S1;
        bloqueiosSucedidos += B1;
        ataquesSucedidos += A1;
    }

    printf("Pontos de Saque: %.2lf %%.\n", 100.0 * saquesSucedidos / saquesTotais);
    printf("Pontos de Bloqueio: %.2lf %%.\n", 100.0 * bloqueiosSucedidos / bloqueiosTotais);
    printf("Pontos de Ataque: %.2lf %%.\n", 100.0 * ataquesSucedidos / ataquesTotais);

    return 0;
}