#include <iostream>
#include <string>
#include <map>

using namespace std;

map<string, int> vitaminaC;

void inicializa()
{
    vitaminaC["suco de laranja"] = 120;
    vitaminaC["morango fresco"] = 85;
    vitaminaC["mamao"] = 85;
    vitaminaC["goiaba vermelha"] = 70;
    vitaminaC["manga"] = 56;
    vitaminaC["laranja"] = 50;
    vitaminaC["brocolis"] = 34;
}

int main()
{
    string nome;
    int T, N, consumo;

    inicializa();

    while (cin >> T)
    {
        if (T == 0)
        {
            break;
        }

        consumo = 0;
        for (int i = 0; i < T; ++i)
        {
            cin >> N;
            cin.ignore();
            getline(cin, nome);

            consumo += N * vitaminaC[nome];
        }

        if (consumo < 110)
        {
            cout << "Mais " << 110 - consumo << " mg" << endl;
        }
        else if (consumo > 130)
        {
            cout << "Menos " << consumo - 130 << " mg" << endl;
        }
        else
        {
            cout << consumo << " mg" << endl;
        }
    }

    return 0;
}