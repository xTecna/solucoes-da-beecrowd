#include <stdio.h>
#define NMAX 10001

int n_primos, C[NMAX], primos[NMAX];

void Crivo()
{
    n_primos = 0;
    C[0] = 0;
    C[1] = 0;
    C[2] = 1;
    primos[n_primos++] = 2;
    for (int i = 4; i < NMAX; i += 2)
    {
        C[i] = 0;
    }
    for (int i = 3; i < NMAX; i += 2)
    {
        C[i] = 1;
    }

    for (int i = 3; i < NMAX; i += 2)
    {
        if (C[i])
        {
            primos[n_primos++] = i;
            for (int j = 3 * i; j < NMAX; j += 2 * i)
            {
                C[j] = 0;
            }
        }
    }
}

long long int potencia(int base, int expoente)
{
    if (expoente == 0)
    {
        return 1;
    }
    else if (expoente % 2)
    {
        return base * potencia(base, expoente - 1);
    }
    else
    {
        long long int pot = potencia(base, expoente / 2);
        return pot * pot;
    }
}

long long int sumDiv(int N)
{
    int i_primo = 0;
    int primo = primos[i_primo];
    long long int resposta = 1;

    while (primo * primo <= N)
    {
        int pot = 0;

        while (N % primo == 0)
        {
            N /= primo;
            ++pot;
        }

        resposta *= (potencia(primo, pot + 1) - 1) / (primo - 1);
        primo = primos[++i_primo];
    }

    if (N != 1)
    {
        resposta *= (potencia(N, 2) - 1) / (N - 1);
    }

    return resposta;
}

int main()
{
    Crivo();

    int N, X;

    scanf("%d", &N);
    for (int i = 0; i < N; ++i)
    {
        scanf("%d", &X);

        if (X == sumDiv(X) - X)
        {
            printf("%lld eh perfeito\n", X);
        }
        else
        {
            printf("%lld nao eh perfeito\n", X);
        }
    }

    return 0;
}