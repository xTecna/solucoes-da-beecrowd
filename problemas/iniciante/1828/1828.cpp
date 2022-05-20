#include <iostream>

using namespace std;

string jogadas[5] = {"tesoura", "papel", "pedra", "lagarto", "Spock"};

int regras[5][5] = {
    {0, 1, -1, 1, -1}, // Tesoura
    {-1, 0, 1, -1, 1}, // Papel
    {1, -1, 0, 1, -1}, // Pedra
    {-1, 1, -1, 0, 1}, // Lagarto
    {1, -1, 1, -1, 0}  // Spock
};

int converte(string jogada)
{
    for (int i = 0; i < 5; ++i)
    {
        if (jogada == jogadas[i])
        {
            return i;
        }
    }
}

int main()
{
    int T;
    string sheldon, raj;

    cin >> T;
    for (int i = 1; i <= T; ++i)
    {
        cin >> sheldon >> raj;

        cout << "Caso #" << i << ": ";
        switch (regras[converte(sheldon)][converte(raj)])
        {
        case -1:
            cout << "Raj trapaceou!" << endl;
            break;
        case 0:
            cout << "De novo!" << endl;
            break;
        case 1:
            cout << "Bazinga!" << endl;
            break;
        }
    }

    return 0;
}