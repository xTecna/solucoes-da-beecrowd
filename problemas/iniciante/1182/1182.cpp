#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    int C;
    char T;
    double soma, numero;

    soma = 0.0;
    cin >> C >> T;
    for (int i = 0; i < 12; ++i)
    {
        for (int j = 0; j < 12; ++j)
        {
            cin >> numero;

            if (j == C)
            {
                soma += numero;
            }
        }
    }

    cout << setprecision(1) << fixed << (T == 'S' ? soma : soma / 12) << endl;

    return 0;
}