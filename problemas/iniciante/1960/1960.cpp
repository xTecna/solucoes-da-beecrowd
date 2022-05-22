#include <iostream>

using namespace std;

string converte(int digito, string um, string cinco, string dez)
{
    if (digito == 9)
    {
        return um + dez;
    }
    else if (digito == 4)
    {
        return um + cinco;
    }

    string resposta = "";
    if (digito > 4)
    {
        resposta = cinco;
        digito -= 5;
    }
    for (int i = 0; i < digito; ++i)
    {
        resposta += um;
    }

    return resposta;
}

int main()
{
    int N;

    cin >> N;

    cout << converte(N / 100, "C", "D", "M");
    N %= 100;
    cout << converte(N / 10, "X", "L", "C");
    N %= 10;
    cout << converte(N, "I", "V", "X");
    cout << endl;

    return 0;
}