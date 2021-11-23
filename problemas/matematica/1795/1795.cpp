#include <iostream>

using namespace std;

long long int potencia(int base, int expoente)
{
    if (expoente == 0)
        return 1;
    if (expoente % 2)
        return base * potencia(base, expoente - 1);

    long long int p = potencia(base, expoente / 2);
    return p * p;
}

int main()
{
    int R;

    cin >> R;
    cout << potencia(3, R) << endl;

    return 0;
}
