#include <iostream>

using namespace std;

int main()
{
    int codigo, alcool, gasolina, diesel;

    alcool = 0, gasolina = 0, diesel = 0;
    while (cin >> codigo)
    {
        if (codigo == 4)
        {
            break;
        }

        switch (codigo)
        {
        case 1:
            ++alcool;
            break;
        case 2:
            ++gasolina;
            break;
        case 3:
            ++diesel;
            break;
        default:
            break;
        }
    }

    cout << "MUITO OBRIGADO" << endl;
    cout << "Alcool: " << alcool << endl;
    cout << "Gasolina: " << gasolina << endl;
    cout << "Diesel: " << diesel << endl;

    return 0;
}