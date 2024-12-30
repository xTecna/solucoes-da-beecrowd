#include <iostream>

using namespace std;

int hex_to_dec(string hex)
{
    int dec = 0, mult = 1;

    for (int i = hex.length() - 1; i > -1; --i)
    {
        if (hex[i] >= '0' && hex[i] <= '9')
        {
            dec += (hex[i] - '0') * mult;
        }
        else
        {
            dec += (10 + hex[i] - 'A') * mult;
        }

        mult *= 16;
    }

    return dec;
}

int main()
{
    int n;
    string numero;

    cin >> n;

    for (int i = 0; i < n; ++i)
    {
        cin >> numero;
        cout << (char)hex_to_dec(numero);
    }
    cout << endl;

    return 0;
}