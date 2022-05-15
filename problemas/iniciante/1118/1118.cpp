#include <iostream>
#include <iomanip>

using namespace std;

bool valido(double x)
{
    return (x >= 0.0) && (x <= 10.0);
}

bool novoCalculo()
{
    int codigo;

    cout << "novo calculo (1-sim 2-nao)" << endl;
    while (cin >> codigo)
    {
        switch (codigo)
        {
        case 1:
            return true;
        case 2:
            return false;
        default:
            break;
        }

        cout << "novo calculo (1-sim 2-nao)" << endl;
    }

    return false;
}

int main()
{
    double X, Y;

    X = -1.0;
    Y = -1.0;
    while (cin >> Y)
    {
        if (valido(Y))
        {
            if (X == -1.0)
            {
                X = Y;
            }
            else
            {
                cout << "media = " << setprecision(2) << fixed << (X + Y) / 2 << endl;
                X = -1.0;

                if (!novoCalculo())
                {
                    break;
                }
            }
        }
        else
        {
            cout << "nota invalida" << endl;
        }
    }

    return 0;
}