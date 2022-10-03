#include <iostream>

using namespace std;

int main()
{
    int M;

    while (cin >> M)
    {
        M %= 360;

        if (M < 90)
        {
            cout << "Bom Dia!!" << endl;
        }
        else if (M < 180)
        {
            cout << "Boa Tarde!!" << endl;
        }
        else if (M < 270)
        {
            cout << "Boa Noite!!" << endl;
        }
        else
        {
            cout << "De Madrugada!!" << endl;
        }
    }

    return 0;
}