#include <iostream>

using namespace std;

int main()
{
    int A, soma;
    string renas[9] = {"Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"};

    soma = 0;
    for (int i = 0; i < 9; ++i)
    {
        cin >> A;
        soma += A;
    }

    cout << renas[soma % 9] << endl;

    return 0;
}