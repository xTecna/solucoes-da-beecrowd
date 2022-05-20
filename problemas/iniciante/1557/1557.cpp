#include <iostream>
#include <iomanip>
#include <cmath>

using namespace std;

int digitos(int numero)
{
    return floor(log10(numero)) + 1;
}

int main()
{
    int N;

    while (cin >> N)
    {
        if (N == 0)
        {
            break;
        }

        int limite = digitos(1 << (2 * N - 2));

        for (int i = 0; i < N; ++i)
        {
            cout << setw(limite) << setfill(' ') << (1 << i);
            for (int j = 1; j < N; ++j)
            {
                cout << " " << setw(limite) << setfill(' ') << (1 << i + j);
            }
            cout << endl;
        }
        cout << endl;
    }

    return 0;
}