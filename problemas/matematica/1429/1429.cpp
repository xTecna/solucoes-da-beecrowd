#include <iostream>

using namespace std;

int acmToDec(string numero)
{
    int potencia = 1, resposta = 0, n = numero.length();

    for (int i = n - 1; i > -1; --i)
    {
        resposta += (numero[i] - '0') * potencia;
        potencia *= (n - i + 1);
    }

    return resposta;
}

int main()
{
    string acm;

    while (cin >> acm)
    {
        if (acm == "0")
            break;

        cout << acmToDec(acm) << endl;
    }

    return 0;
}
