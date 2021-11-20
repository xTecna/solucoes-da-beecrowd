#include <iostream>
#include <vector>
#include <cmath>

using namespace std;

void Crivo(vector<bool> &C, vector<int> &primos, int n)
{
    C.assign(n, true);

    C[1] = false;
    primos.push_back(2);

    for (int i = 4; i < n; i += 2)
    {
        C[i] = false;
    }

    for (int i = 3; i < n; i += 2)
    {
        if (C[i])
        {
            primos.push_back(i);

            for (int j = i * 3; j < n; j += 2 * i)
            {
                C[j] = false;
            }
        }
    }
}

bool ehPrimo(vector<int> &primos, int n)
{
    int p = primos.size();
    int limite = sqrt(n) + 1;

    for (int i = 0; i < p && primos[i] < limite; ++i)
    {
        if (n % primos[i] == 0)
        {
            return (n == primos[i]);
        }
    }

    return true;
}

int main()
{
    int N, X;
    vector<bool> C;
    vector<int> primos;

    Crivo(C, primos, 65536);

    cin >> N;

    for (int i = 0; i < N; ++i)
    {
        cin >> X;

        cout << (string)(ehPrimo(primos, X) ? "Prime" : "Not Prime") << endl;
    }

    return 0;
}
