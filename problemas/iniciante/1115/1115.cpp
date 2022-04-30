#include <iostream>

using namespace std;

int main()
{
    int X, Y;

    while (cin >> X >> Y)
    {
        if (X == 0 || Y == 0)
        {
            break;
        }

        if (X > 0)
        {
            if (Y > 0)
            {
                cout << "primeiro" << endl;
            }
            else
            {
                cout << "quarto" << endl;
            }
        }
        else
        {
            if (Y > 0)
            {
                cout << "segundo" << endl;
            }
            else
            {
                cout << "terceiro" << endl;
            }
        }
    }

    return 0;
}