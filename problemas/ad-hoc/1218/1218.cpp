#include <iostream>
#include <sstream>

using namespace std;

int main()
{
    char genero;
    string linha;
    stringstream fluxo;
    int caso, tamanho_desejado, feminino, masculino, tamanho;

    caso = 0;
    while (cin >> tamanho_desejado)
    {
        if (caso > 0)
            cout << endl;

        cin.ignore();
        getline(cin, linha);

        feminino = masculino = 0;

        fluxo.clear();
        fluxo << linha;
        while (fluxo >> tamanho >> genero)
        {
            if (tamanho == tamanho_desejado)
            {
                if (genero == 'F')
                    ++feminino;
                else
                    ++masculino;
            }
        }

        cout << "Caso " << ++caso << ':' << endl;
        cout << "Pares Iguais: " << feminino + masculino << endl;
        cout << "F: " << feminino << endl;
        cout << "M: " << masculino << endl;
    }

    return 0;
}
