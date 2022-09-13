#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    string nome;
    int T, S, B, A, S1, B1, A1;
    int saquesSucedidos = 0, bloqueiosSucedidos = 0, ataquesSucedidos = 0;
    int saquesTotais = 0, bloqueiosTotais = 0, ataquesTotais = 0;

    cin >> T;
    for (int i = 0; i < T; ++i)
    {
        cin >> nome;

        cin >> S >> B >> A;
        saquesTotais += S;
        bloqueiosTotais += B;
        ataquesTotais += A;

        cin >> S1 >> B1 >> A1;
        saquesSucedidos += S1;
        bloqueiosSucedidos += B1;
        ataquesSucedidos += A1;
    }

    cout << "Pontos de Saque: " << setprecision(2) << fixed << 100.0 * saquesSucedidos / saquesTotais << " %." << endl;
    cout << "Pontos de Bloqueio: " << setprecision(2) << fixed << 100.0 * bloqueiosSucedidos / bloqueiosTotais << " %." << endl;
    cout << "Pontos de Ataque: " << setprecision(2) << fixed << 100.0 * ataquesSucedidos / ataquesTotais << " %." << endl;

    return 0;
}