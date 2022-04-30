#include <iostream>

using namespace std;

int main()
{
    int senha;

    while (cin >> senha)
    {
        if (senha == 2002)
        {
            cout << "Acesso Permitido" << endl;
            break;
        }

        cout << "Senha Invalida" << endl;
    }

    return 0;
}