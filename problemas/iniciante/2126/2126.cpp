#include <iostream>

using namespace std;

int main()
{
    int k = 0;
    string N1, N2;

    while (cin >> N1 >> N2)
    {
        int qtd = 0, pos = -1, p = N2.find(N1);
        while (p != string::npos)
        {
            ++qtd;
            pos = p;
            p = N2.find(N1, p + 1);
        }

        cout << "Caso #" << ++k << ":" << endl;
        if (qtd == 0)
        {
            cout << "Nao existe subsequencia" << endl
                 << endl;
        }
        else
        {
            cout << "Qtd.Subsequencias: " << qtd << endl;
            cout << "Pos: " << pos + 1 << endl
                 << endl;
        }
    }

    return 0;
}