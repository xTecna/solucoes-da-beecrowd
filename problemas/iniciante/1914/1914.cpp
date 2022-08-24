#include <iostream>

using namespace std;

int main()
{
    string jogador1, jogada1, jogador2, jogada2;
    int QT, N, M;

    cin >> QT;
    for (int i = 0; i < QT; ++i)
    {
        cin >> jogador1 >> jogada1 >> jogador2 >> jogada2;
        cin >> N >> M;

        string jogadaGanha = (N + M) % 2 ? "IMPAR" : "PAR";

        if (jogada1 == jogadaGanha)
        {
            cout << jogador1 << endl;
        }
        else
        {
            cout << jogador2 << endl;
        }
    }

    return 0;
}