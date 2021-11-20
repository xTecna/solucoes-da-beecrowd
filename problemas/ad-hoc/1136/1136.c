#include <string.h>
#include <stdlib.h>
#include <stdio.h>

int main()
{
    int N, B, resposta, bolas[90], possibilidades[91];

    while (scanf("%d %d", &N, &B))
    {
        if (!N && !B)
            break;

        memset(possibilidades, 0, sizeof(possibilidades));
        possibilidades[0] = 1;
        resposta = 1;

        for (int i = 0; i < B; ++i)
        {
            scanf("%d", &bolas[i]);
        }

        for (int i = 0; i < B; ++i)
        {
            for (int j = i + 1; j < B; ++j)
            {
                int absoluto = abs(bolas[i] - bolas[j]);

                if (!possibilidades[absoluto])
                {
                    ++resposta;
                    possibilidades[absoluto] = 1;
                }
            }
        }

        printf("%c\n", resposta == N + 1 ? 'Y' : 'N');
    }

    return 0;
}
