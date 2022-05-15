#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    int L;
    char T;
    double soma, numero;

    cin >> L >> T;

    soma = 0.0;
    for (int i = 0; i < 12; ++i)
    {
        for (int j = 0; j < 12; ++j)
        {
            cin >> numero;

            if (i == L)
            {
                soma += numero;
            }
        }
    }

    cout << setprecision(1) << fixed << (T == 'S' ? soma : soma / 12) << endl;

    return 0;
}