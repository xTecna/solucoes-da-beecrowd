#include <iostream>

using namespace std;

int main()
{
    double numero;

    cin >> numero;

    if (0 <= numero && numero <= 25)
    {
        cout << "Intervalo [0,25]" << endl;
    }
    else if (25 < numero && numero <= 50)
    {
        cout << "Intervalo (25,50]" << endl;
    }
    else if (50 < numero && numero <= 75)
    {
        cout << "Intervalo (50,75]" << endl;
    }
    else if (75 < numero && numero <= 100)
    {
        cout << "Intervalo (75,100]" << endl;
    }
    else
    {
        cout << "Fora de intervalo" << endl;
    }

    return 0;
}