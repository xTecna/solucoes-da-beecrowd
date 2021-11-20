#include <iostream>

using namespace std;

int main()
{
    int posicoes[255];
    string frase, teclado = "`1234567890-=QWERTYUIOP[]\\ASDFGHJKL;'ZXCVBNM,./";

    for (int i = 0; i < 48; ++i)
    {
        posicoes[teclado[i]] = i;
    }

    while (getline(cin, frase))
    {
        for (int i = 0; i < frase.length(); ++i)
        {
            if (frase[i] == ' ')
                cout << ' ';
            else
                cout << teclado[posicoes[frase[i]] - 1];
        }
        cout << endl;
    }

    return 0;
}
