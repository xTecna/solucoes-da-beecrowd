#include <iostream>

using namespace std;

int main()
{
    int X, Z;

    cin >> X;
    while (cin >> Z)
    {
        if (Z > X)
        {
            break;
        }
    }

    int resposta = 1, soma = X;
    while (soma <= Z)
    {
        soma += X + resposta;
        ++resposta;
    }

    cout << resposta << endl;

    return 0;
}