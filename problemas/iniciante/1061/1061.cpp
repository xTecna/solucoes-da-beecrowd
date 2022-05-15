#include <iostream>

using namespace std;

int converte(int dia, int hora, int minuto, int segundo)
{
    return (24 * 60 * 60) * dia + (60 * 60) * hora + 60 * minuto + segundo;
}

int main()
{
    string lixo;
    int d_inicial, h_inicial, m_inicial, s_inicial, d_final, h_final, m_final, s_final;

    cin >> lixo >> d_inicial;
    cin >> h_inicial >> lixo >> m_inicial >> lixo >> s_inicial;
    cin >> lixo >> d_final;
    cin >> h_final >> lixo >> m_final >> lixo >> s_final;

    int inicial = converte(d_inicial, h_inicial, m_inicial, s_inicial);
    int final = converte(d_final, h_final, m_final, s_final);

    int duracao = final - inicial;

    cout << duracao / (24 * 60 * 60) << " dia(s)" << endl;
    duracao %= (24 * 60 * 60);
    cout << duracao / (60 * 60) << " hora(s)" << endl;
    duracao %= (60 * 60);
    cout << duracao / 60 << " minuto(s)" << endl;
    duracao %= 60;
    cout << duracao << " segundo(s)" << endl;

    return 0;
}