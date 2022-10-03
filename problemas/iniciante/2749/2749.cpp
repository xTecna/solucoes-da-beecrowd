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
    imprimirMeio("x = 35", 1);
    imprimirMeio("", 1);
    imprimirMeio("x = 35", 17);
    imprimirMeio("", 1);
    imprimirMeio("x = 35", 33);
    imprimirLinha();

    return 0;
}