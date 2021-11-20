#include <stdio.h>

int main()
{
    int N, resultado;
    int fatoriais[] = {40320, 5040, 720, 120, 24, 6, 2, 1};

    scanf("%d", &N);

    resultado = 0;
    for (int i = 0; i < 8; ++i)
    {
        resultado += N / fatoriais[i];
        N %= fatoriais[i];
    }

    printf("%d\n", resultado);

    return 0;
}
