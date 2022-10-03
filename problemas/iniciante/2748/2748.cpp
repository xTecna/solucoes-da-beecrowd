#include <iostream>

using namespace std;

void imprimirLinha()
{
    for (int i = 0; i < 39; ++i)
    {
        cout << '-';
    }
    cout << endl;
}

void imprimirMeio(string texto, int indice)
{
    cout << '|';
    for (int i = 0; i < indice - 2; ++i)
    {
        cout << ' ';
    }
    cout << texto;

    int resto = 37 - max(0, indice - 2) - texto.length();
    for (int i = 0; i < resto; ++i)
    {
        cout << ' ';
    }
    cout << '|' << endl;
}

int main()
{
    imprimirLinha();
    imprimirMeio("Roberto", 10);
    imprimirMeio("", 1);
    imprimirMeio("5786", 10);
    imprimirMeio("", 1);
    imprimirMeio("UNIFEI", 10);
    imprimirLinha();

    return 0;
}