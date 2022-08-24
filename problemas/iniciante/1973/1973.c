#include <stdio.h>

int ovelhas[1000000], visitados[1000000];

int main()
{
    int N, estrelas;
    long long int naoRoubados;

    scanf("%d", &N);

    int i;
    naoRoubados = 0;
    for (i = 0; i < N; ++i)
    {
        scanf("%d", &ovelhas[i]);

        visitados[i] = 0;
        naoRoubados += ovelhas[i];
    }

    i = 0;
    estrelas = 0;
    while (i > -1 && i < N)
    {
        if (!visitados[i])
        {
            visitados[i] = 1;
            ++estrelas;
        }

        int antes = ovelhas[i];
        if (ovelhas[i] > 0)
        {
            ovelhas[i] -= 1;
            --naoRoubados;
        }

        if (antes % 2)
            ++i;
        else
            --i;
    }

    printf("%d %lld\n", estrelas, naoRoubados);

    return 0;
}