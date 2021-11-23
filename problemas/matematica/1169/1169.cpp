#include <iostream>

using namespace std;

unsigned long long int potencia(int base, int expoente)
{
    if (expoente == 1)
        return base;
    if (expoente % 2)
        return base * potencia(base, expoente - 1);

    unsigned long long int p = potencia(base, expoente / 2);
    return p * p;
}

unsigned long long int somaPG(int a0, int q, int n)
{
    return a0 * (potencia(q, n) - 1) / (q - 1);
}

int main()
{
    int N, X;

    cin >> N;

    for (int i = 0; i < N; ++i)
    {
        cin >> X;

        cout << somaPG(1, 2, X) / 12000 << " kg" << endl;
    }

    return 0;
}
