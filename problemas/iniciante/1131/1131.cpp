#include <iostream>

using namespace std;

int main()
{
    int codigo, pt_inter, pt_gremio, inter, gremio, empate;

    inter = 0;
    gremio = 0;
    empate = 0;
    while (cin >> pt_inter >> pt_gremio)
    {
        if (pt_inter > pt_gremio)
        {
            ++inter;
        }
        else if (pt_inter == pt_gremio)
        {
            ++empate;
        }
        else
        {
            ++gremio;
        }

        cout << "Novo grenal (1-sim 2-nao)" << endl;
        cin >> codigo;
        if (codigo != 1)
        {
            break;
        }
    }

    cout << inter + gremio + empate << " grenais" << endl;
    cout << "Inter:" << inter << endl;
    cout << "Gremio:" << gremio << endl;
    cout << "Empates:" << empate << endl;

    if (inter > gremio)
    {
        cout << "Inter venceu mais" << endl;
    }
    else if (inter == gremio)
    {
        cout << "Nao houve vencedor" << endl;
    }
    else
    {
        cout << "Gremio venceu mais" << endl;
    }

    return 0;
}