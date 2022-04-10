#include <iostream>

using namespace std;

int main()
{
    int pares, numero;

    pares = 0;
    for (int i = 0; i < 5; ++i)
    {
        cin >> numero;

        if (numero % 2 == 0)
        {
            pares += 1;
        }
    }

    cout << pares << " valores pares" << endl;

    return 0;
}