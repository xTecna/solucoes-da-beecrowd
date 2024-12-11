#include <iostream>
#include <set>

using namespace std;

char supersticao[4] = {'A', 'Q', 'K', 'J'};

bool vaiGanhar(const set<char> &cartas)
{
    for (int i = 0; i < 4; ++i)
    {
        if (!cartas.count(supersticao[i]))
        {
            return false;
        }
    }
    return true;
}

int main()
{
    int n;
    string baralho;

    cin >> n;
    for (int i = 0; i < n; ++i)
    {
        cin >> baralho;

        std::set<char> cartas;
        for (int j = 0; j < baralho.size(); ++j)
        {
            cartas.insert(baralho[j]);
        }

        if (vaiGanhar(cartas))
        {
            cout << "Aaah muleke" << std::endl;
        }
        else
        {
            cout << "Ooo raca viu" << std::endl;
        }
    }

    return 0;
}