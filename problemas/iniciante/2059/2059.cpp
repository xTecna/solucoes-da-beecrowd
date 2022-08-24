#include <iostream>

using namespace std;

int main()
{
    int p, j1, j2, r, a;

    cin >> p >> j1 >> j2 >> r >> a;

    if (r)
    {
        if (a)
        {
            cout << "Jogador 2 ganha!" << endl;
        }
        else
        {
            cout << "Jogador 1 ganha!" << endl;
        }
    }
    else
    {
        if (a)
        {
            cout << "Jogador 1 ganha!" << endl;
        }
        else
        {
            cout << "Jogador " << ((j1 + j2) % 2 == (1 - p) ? 1 : 2) << " ganha!" << endl;
        }
    }

    return 0;
}