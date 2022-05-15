#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    int idade, soma, contador;

    soma = 0;
    contador = 0;
    while (cin >> idade)
    {
        if (idade < 0)
        {
            break;
        }

        soma += idade;
        ++contador;
    }

    cout << setprecision(2) << fixed << (double)soma / contador << endl;

    return 0;
}