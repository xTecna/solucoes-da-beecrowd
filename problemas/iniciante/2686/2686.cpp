#include <iostream>
#include <iomanip>

using namespace std;

int tempoDecorrido(double angulo)
{
    return angulo * 240;
}

int converte(double angulo)
{
    return (tempoDecorrido(angulo) + tempoDecorrido(90)) % tempoDecorrido(360);
}

int main()
{
    double M;

    while (cin >> M)
    {
        if (M < 90.0 || M == 360.0)
        {
            cout << "Bom Dia!!" << endl;
        }
        else if (M < 180.0)
        {
            cout << "Boa Tarde!!" << endl;
        }
        else if (M < 270.0)
        {
            cout << "Boa Noite!!" << endl;
        }
        else
        {
            cout << "De Madrugada!!" << endl;
        }

        int tempo = converte(M);
        int horas = tempo / 3600;
        tempo %= 3600;
        int minutos = tempo / 60;
        int segundos = tempo % 60;

        cout << setw(2) << setfill('0') << horas << ':' << setw(2) << setfill('0') << minutos << ':' << setw(2) << setfill('0') << segundos << endl;
    }

    return 0;
}