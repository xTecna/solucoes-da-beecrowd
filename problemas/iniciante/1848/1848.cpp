#include <iostream>

using namespace std;

int converte(string linha)
{
    int soma = 0, n = linha.length();

    for (int i = 0; i < n; ++i)
    {
        if (linha[i] == '*')
        {
            soma += 1 << (n - i - 1);
        }
    }

    return soma;
}

int main()
{
    int soma = 0;
    string linha;

    while (getline(cin, linha))
    {
        if (linha == "caw caw")
        {
            cout << soma << endl;
            soma = 0;
        }
        else
        {
            soma += converte(linha);
        }
    }

    return 0;
}