#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    double nota, nota1, nota2;

    nota1 = -1.0, nota2 = -1.0;
    while (nota2 == -1.0)
    {
        cin >> nota;

        if (nota >= 0.0 && nota <= 10.0)
        {
            if (nota1 == -1.0)
            {
                nota1 = nota;
            }
            else
            {
                nota2 = nota;
            }
        }
        else
        {
            cout << "nota invalida" << endl;
        }
    }

    cout << "media = " << setprecision(2) << fixed << (nota1 + nota2) / 2 << endl;

    return 0;
}