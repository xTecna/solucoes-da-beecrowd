#include <stdio.h>

int max(int a, int b)
{
    return a > b ? a : b;
}

int main()
{
    int N;
    long long int X;

    scanf("%d", &N);
    for (int i = 0; i < N; ++i)
    {
        scanf("%lld", &X);

        int resposta = 0, contador = 0;
        while (X > 0)
        {
            if (X % 2 == 1)
            {
                ++contador;
            }
            else
            {
                resposta = max(resposta, contador);
                contador = 0;
            }
            X /= 2;
        }
        resposta = max(resposta, contador);

        printf("%d\n", resposta);
    }

    return 0;
}