#include <iostream>

using namespace std;

int main()
{
    int h_inicial, m_inicial, h_final, m_final;

    cin >> h_inicial >> m_inicial >> h_final >> m_final;

    int inicial = h_inicial * 60 + m_inicial;
    int final = h_final * 60 + m_final;

    if (final <= inicial)
    {
        final += 24 * 60;
    }

    cout << "O JOGO DUROU " << (final - inicial) / 60 << " HORA(S) E " << (final - inicial) % 60 << " MINUTO(S)" << endl;

    return 0;
}