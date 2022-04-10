#include <iostream>

using namespace std;

int main()
{
    int numero, impar, par, negativo, positivo;

    par = 0;
    impar = 0;
    positivo = 0;
    negativo = 0;
    for (int i = 0; i < 5; ++i)
    {
        cin >> numero;

        if (numero % 2)
        {
            impar += 1;
        }
        else
        {
            par += 1;
        }

        if (numero > 0)
        {
            positivo += 1;
        }
        else if (numero < 0)
        {
            negativo += 1;
        }
    }

    cout << par << " valor(es) par(es)" << endl;
    cout << impar << " valor(es) impar(es)" << endl;
    cout << positivo << " valor(es) positivo(s)" << endl;
    cout << negativo << " valor(es) negativo(s)" << endl;

    return 0;
}