#include <iostream>
#include <cctype>

using namespace std;

int main()
{
    string linha;
    int N, digito1, digito2;

    cin >> N;

    for (int i = 0; i < N; ++i)
    {
        cin >> linha;

        digito1 = linha[0] - '0';
        digito2 = linha[2] - '0';

        if (digito1 == digito2)
        {
            cout << digito1 * digito2 << endl;
        }
        else if (isupper(linha[1]))
        {
            cout << digito2 - digito1 << endl;
        }
        else
        {
            cout << digito1 + digito2 << endl;
        }
    }

    return 0;
}
