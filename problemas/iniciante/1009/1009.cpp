#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    string vendedor;
    double salario, vendas, total;

    cin >> vendedor >> salario >> vendas;

    total = salario + 0.15 * vendas;

    cout << "TOTAL = R$ " << setprecision(2) << fixed << total << endl;

    return 0;
}