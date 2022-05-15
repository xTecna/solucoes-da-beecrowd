#include <iostream>
#define NMAX 10001

using namespace std;

bool C[NMAX];
int n_primos, primos[NMAX];

void Crivo()
{
    n_primos = 0;
    C[0] = false;
    C[1] = false;
    C[2] = true;
    primos[n_primos++] = 2;
    for (int i = 4; i < NMAX; i += 2)
    {
        C[i] = false;
    }
    for (int i = 3; i < NMAX; i += 2)
    {
        C[i] = true;
    }

    for (int i = 3; i < NMAX; i += 2)
    {
        if (C[i])
        {
            primos[n_primos++] = i;
            for (int j = 3 * i; j < NMAX; j += 2 * i)
            {
                C[j] = false;
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
        int pot = potencia(base, expoente / 2);
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

    cin >> N;
    for (int i = 0; i < N; ++i)
    {
        cin >> X;

        if (X == sumDiv(X) - X)
        {
            cout << X << " eh perfeito" << endl;
        }
        else
        {
            cout << X << " nao eh perfeito" << endl;
        }
    }

    return 0;
}