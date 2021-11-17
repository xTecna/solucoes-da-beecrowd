#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    int numero, horas;
    double valor, salario;

    cin >> numero >> horas >> valor;

    salario = valor * horas;

    cout << "NUMBER = " << numero << endl;
    cout << "SALARY = U$ " << setprecision(2) << fixed << salario << endl;

    return 0;
}