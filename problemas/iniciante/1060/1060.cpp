#include <iostream>

using namespace std;

int main()
{
    double numero;
    int positivos;

    positivos = 0;
    for (int i = 0; i < 6; ++i)
    {
        cin >> numero;

        if (numero > 0)
            ++positivos;
    }

    cout << positivos << " valores positivos" << endl;

    return 0;
}