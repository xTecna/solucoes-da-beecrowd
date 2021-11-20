#include <iostream>
#include <iomanip>
#include <map>

using namespace std;

int main()
{
    string fruta;
    double preco, resposta;
    int N, M, P, quantidade;
    map<string, double> precos;

    cin >> N;
    for (int k = 0; k < N; ++k)
    {
        precos.clear();

        cin >> M;

        for (int i = 0; i < M; ++i)
        {
            cin >> fruta >> preco;

            precos.insert(pair<string, double>(fruta, preco));
        }

        cin >> P;

        resposta = 0.0;
        for (int i = 0; i < P; ++i)
        {
            cin >> fruta >> quantidade;

            resposta += quantidade * precos[fruta];
        }

        cout << "R$ " << setprecision(2) << fixed << resposta << endl;
    }

    return 0;
}
