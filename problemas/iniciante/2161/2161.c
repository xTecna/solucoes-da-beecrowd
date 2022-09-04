#include <stdio.h>

int main()
{
    int N;
    double resposta;

    scanf("%d", &N);

    if (N == 0)
    {
        resposta = 3.0;
    }
    else
    {
        resposta = 6.0;
        for (int i = 0; i < N - 1; ++i)
        {
            resposta = 6.0 + 1.0 / resposta;
        }
        resposta = 3.0 + 1.0 / resposta;
    }

    printf("%.10lf\n", resposta);

    return 0;
}