#include <iostream>

using namespace std;

int main()
{
    int inicio, fim;

    cin >> inicio >> fim;

    if (inicio > fim)
    {
        fim += 24;
    }

    if (fim == inicio)
    {
        cout << "O JOGO DUROU 24 HORA(S)" << endl;
    }
    else
    {
        cout << "O JOGO DUROU " << fim - inicio << " HORA(S)" << endl;
    }

    return 0;
}