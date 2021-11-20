#include <iostream>
#include <vector>

using namespace std;

int main()
{
    vector<int> PV;
    int J, R, pontos, maior, vencedor;

    cin >> J >> R;

    R *= J;
    PV.assign(J, 0);
    for (int i = 0; i < R; ++i)
    {
        cin >> pontos;

        PV[i % J] += pontos;
    }

    vencedor = 0;
    maior = PV[0];
    for (int i = 1; i < J; ++i)
    {
        if (PV[i] >= maior)
        {
            vencedor = i;
            maior = PV[i];
        }
    }

    cout << vencedor + 1 << endl;

    return 0;
}
