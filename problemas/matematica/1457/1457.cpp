#include <iostream>
#include <string>

using namespace std;

long long int F[101][21];

long long int fatorial(int n, int k)
{
    if (n < 1)
        return 1;
    if (F[n][k] == -1)
        F[n][k] = n * fatorial(n - k, k);
    return F[n][k];
}

int main()
{
    int T, N, K;
    string entrada;

    for (int i = 1; i <= 100; ++i)
    {
        for (int j = 1; j <= 20; ++j)
        {
            F[i][j] = -1;
        }
    }

    cin >> T;

    for (int k = 0; k < T; ++k)
    {
        cin >> entrada;

        N = stoi(entrada.substr(0, entrada.find('!')));
        K = entrada.length() - entrada.find('!');

        cout << fatorial(N, K) << endl;
    }

    return 0;
}
