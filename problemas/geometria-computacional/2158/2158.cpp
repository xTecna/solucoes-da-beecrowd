#include <iostream>

using namespace std;

int main()
{
    int T;
    long long int pentagonos, hexagonos;
    unsigned long long int ligacoes, atomos;

    T = 1;
    while (cin >> pentagonos >> hexagonos)
    {
        ligacoes = ((unsigned long long int)5 * pentagonos + 6 * hexagonos) / 2;
        atomos = ligacoes + 2 - (pentagonos + hexagonos);

        cout << "Molecula #" << T++ << ".:." << endl;
        cout << "Possui " << atomos << " atomos e " << ligacoes << " ligacoes" << endl
             << endl;
    }

    return 0;
}