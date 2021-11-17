#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    int tempo, velocidade, distancia;
    double litros;

    cin >> tempo >> velocidade;

    distancia = velocidade * tempo;
    litros = distancia / 12.0;

    cout << setprecision(3) << fixed << litros << endl;

    return 0;
}