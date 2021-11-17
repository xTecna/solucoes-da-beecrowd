#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    int codigo1, quantidade1, codigo2, quantidade2;
    double valor1, valor2, valor;

    cin >> codigo1 >> quantidade1 >> valor1;
    cin >> codigo2 >> quantidade2 >> valor2;

    valor = quantidade1 * valor1 + quantidade2 * valor2;

    cout << "VALOR A PAGAR: R$ " << setprecision(2) << fixed << valor << endl;

    return 0;
}