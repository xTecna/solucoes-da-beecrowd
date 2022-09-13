#include <algorithm>
#include <iostream>
#include <sstream>
#include <vector>

using namespace std;

struct expressao
{
    int x;
    int y;
    int z;
};

expressao leEntrada(int X, string YZ)
{
    expressao entrada;

    entrada.x = X;

    stringstream fluxo;
    int indice = YZ.find('=');
    fluxo << YZ.substr(0, indice);
    fluxo >> entrada.y;
    fluxo.clear();
    fluxo << YZ.substr(indice + 1);
    fluxo >> entrada.z;

    return entrada;
}

bool soma(expressao e)
{
    return e.x + e.y == e.z;
}

bool subtracao(expressao e)
{
    return e.x - e.y == e.z;
}

bool multiplicacao(expressao e)
{
    return e.x * e.y == e.z;
}

int main()
{
    int T, X, E;
    char operador;
    string nome, YZ;
    vector<string> errados;
    vector<expressao> expressoes;

    while (cin >> T)
    {
        errados.clear();
        expressoes.clear();

        for (int i = 0; i < T; ++i)
        {
            cin >> X >> YZ;
            expressoes.push_back(leEntrada(X, YZ));
        }

        for (int i = 0; i < T; ++i)
        {
            cin >> nome >> E >> operador;

            switch (operador)
            {
            case '+':
                if (!soma(expressoes[E - 1]))
                {
                    errados.push_back(nome);
                }
                break;
            case '-':
                if (!subtracao(expressoes[E - 1]))
                {
                    errados.push_back(nome);
                }
                break;
            case '*':
                if (!multiplicacao(expressoes[E - 1]))
                {
                    errados.push_back(nome);
                }
                break;
            case 'I':
                if (soma(expressoes[E - 1]) || subtracao(expressoes[E - 1]) || multiplicacao(expressoes[E - 1]))
                {
                    errados.push_back(nome);
                }
                break;
            }
        }

        if (errados.size() == 0)
        {
            cout << "You Shall All Pass!" << endl;
        }
        else if (errados.size() == T)
        {
            cout << "None Shall Pass!" << endl;
        }
        else
        {
            sort(errados.begin(), errados.end());
            cout << errados[0];
            for (int i = 1; i < errados.size(); ++i)
            {
                cout << " " << errados[i];
            }
            cout << endl;
        }
    }

    return 0;
}