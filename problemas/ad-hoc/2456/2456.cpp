#include <iostream>
#include <vector>

using namespace std;

int main()
{
    vector<int> cartas;
    bool crescente, decrescente;

    cartas.assign(5, 0);
    for (int i = 0; i < 5; ++i)
    {
        cin >> cartas[i];
    }

    crescente = decrescente = true;
    for (int i = 0; i < 4; ++i)
    {
        if (cartas[i] <= cartas[i + 1])
            decrescente = false;
        if (cartas[i] >= cartas[i + 1])
            crescente = false;
    }

    if (crescente)
        cout << 'C' << endl;
    else if (decrescente)
        cout << 'D' << endl;
    else
    {
        cout << 'N' << endl;
    }

    return 0;
}
