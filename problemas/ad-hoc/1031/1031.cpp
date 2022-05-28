#include <iostream>

using namespace std;

int T[101][1001];

int sobrevivente(int n, int k)
{
    if (T[n][k] == -1)
    {
        T[n][k] = (sobrevivente(n - 1, k) + k) % n;
    }
    return T[n][k];
}

int main()
{
    int N, m;

    for (int i = 0; i < 2; ++i)
    {
        for (int j = 0; j < 1001; ++j)
        {
            T[i][j] = 0;
        }
    }
    for (int i = 2; i < 101; ++i)
    {
        for (int j = 0; j < 1001; ++j)
        {
            T[i][j] = -1;
        }
    }

    while (cin >> N)
    {
        if (N == 0)
        {
            break;
        }

        m = 1;
        while ((sobrevivente(N - 1, m) + 1) % N != 12)
        {
            ++m;
        }

        cout << m << endl;
    }

    return 0;
}