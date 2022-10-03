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

void imprimirMeio()
{
    cout << '|';
    for (int i = 0; i < 37; ++i)
    {
        cout << ' ';
    }
    cout << '|' << endl;
}

int main()
{
    imprimirLinha();
    for (int i = 0; i < 5; ++i)
    {
        imprimirMeio();
    }
    imprimirLinha();

    return 0;
}