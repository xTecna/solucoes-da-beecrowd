#include <iostream>

using namespace std;

int main()
{
    int numero;
    string comando;
    int veiculos, turistas;

    veiculos = 0;
    turistas = 0;
    while (cin >> comando)
    {
        if (comando == "ABEND")
            break;

        cin >> numero;
        if (comando == "SALIDA")
        {
            veiculos += 1;
            turistas += numero;
        }
        else
        {
            veiculos -= 1;
            turistas -= numero;
        }
    }

    cout << turistas << endl;
    cout << veiculos << endl;

    return 0;
}