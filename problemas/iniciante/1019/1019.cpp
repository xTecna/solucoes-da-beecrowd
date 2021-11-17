#include <iostream>

using namespace std;

int main()
{
    int segundos, horas, minutos;

    cin >> segundos;

    horas = segundos / 3600;
    segundos %= 3600;
    minutos = segundos / 60;
    segundos %= 60;

    cout << horas << ':' << minutos << ':' << segundos << endl;

    return 0;
}