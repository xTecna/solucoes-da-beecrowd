#include <iostream>

using namespace std;

int main()
{
    char ponto, traco;
    int a[4], d[11];

    while (cin >> a[0] >> ponto >> a[1] >> ponto >> a[2] >> traco >> a[3])
    {
        for (int i = 0; i < 11; ++i)
        {
            d[i] = 0;
        }

        for (int i = 0; i < 3; ++i)
        {
            int j = 2;

            while (a[i])
            {
                d[3 * i + j] = a[i] % 10;

                a[i] /= 10;
                --j;
            }
        }

        d[9] = a[3] / 10;
        d[10] = a[3] % 10;

        int soma = 0;
        for (int i = 0; i < 9; ++i)
        {
            soma += (i + 1) * d[i];
        }
        soma %= 11;
        if (soma == 10)
            soma = 0;

        if (soma == d[9])
        {
            soma = 0;
            for (int i = 0; i < 9; ++i)
            {
                soma += (9 - i) * d[i];
            }
            soma %= 11;
            if (soma == 10)
                soma = 0;

            if (soma == d[10])
            {
                cout << "CPF valido" << endl;
            }
            else
            {
                cout << "CPF invalido" << endl;
            }
        }
        else
        {
            cout << "CPF invalido" << endl;
        }
    }

    return 0;
}
