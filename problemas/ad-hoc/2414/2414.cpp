#include <iostream>

using namespace std;

int main()
{
    int numero, maior;

    maior = 0;
    while (cin >> numero)
    {
        if (!numero)
            break;

        if (numero > maior)
            maior = numero;
    }

    cout << maior << endl;

    return 0;
}
