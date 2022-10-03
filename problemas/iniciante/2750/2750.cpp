#include <iostream>
#include <iomanip>

using namespace std;

void imprimeLinhaHorizontal()
{
    for (int i = 0; i < 39; ++i)
    {
        cout << '-';
    }
    cout << endl;
}

void imprimeCabecalho()
{
    imprimeLinhaHorizontal();
    cout << "|  decimal  |  octal  |  Hexadecimal  |" << endl;
    imprimeLinhaHorizontal();
}

void imprimeLinha(int numero)
{
    cout << '|';
    cout << setw(7) << setfill(' ') << dec << numero;
    cout << "    |";
    cout << setw(5) << setfill(' ') << oct << numero;
    cout << "    |";
    cout << setw(8) << setfill(' ') << hex << uppercase << numero;
    cout << "       |" << endl;
}

int main()
{
    imprimeCabecalho();
    for (int i = 0; i < 16; ++i)
    {
        imprimeLinha(i);
    }
    imprimeLinhaHorizontal();

    return 0;
}