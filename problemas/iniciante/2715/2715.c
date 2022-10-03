#include <stdlib.h>
#include <stdio.h>

long long int min(long long int a, long long int b)
{
    return a < b ? a : b;
}

long long int somas[1000001];

int main()
{
    int N;

    while (scanf("%d", &N) != EOF)
    {
        scanf("%d", &somas[0]);
        for (int i = 1; i < N; ++i)
        {
            scanf("%d", &somas[i]);
            somas[i] += somas[i - 1];
        }

        int inicio = 0, fim = N;
        long long int resposta = somas[N - 1];
        while (inicio < fim)
        {
            int meio = (inicio + fim) / 2;

            long long int rangel = somas[meio];
            long long int gugu = somas[N - 1] - rangel;
            resposta = min(resposta, llabs(rangel - gugu));

            if (rangel == gugu)
            {
                break;
            }
            else if (rangel < gugu)
            {
                inicio = meio + 1;
            }
            else
            {
                fim = meio;
            }
        }

        printf("%lld\n", resposta);
    }

    return 0;
}