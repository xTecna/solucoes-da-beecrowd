#include <iostream>

using namespace std;

int main()
{
    int a, b, carry, resposta;

    while (cin >> a >> b)
    {
        if (!a && !b)
            break;

        carry = 0;
        resposta = 0;
        while (a && b)
        {
            if (a % 10 + b % 10 + carry > 9)
            {
                carry = 1;
                ++resposta;
            }
            else
            {
                carry = 0;
            }

            a /= 10;
            b /= 10;
        }

        while (a)
        {
            if (a % 10 + carry > 9)
            {
                carry = 1;
                ++resposta;
            }
            else
            {
                carry = 0;
            }

            a /= 10;
        }

        while (b)
        {
            if (b % 10 + carry > 9)
            {
                carry = 1;
                ++resposta;
            }
            else
            {
                carry = 0;
            }

            b /= 10;
        }

        if (resposta == 0)
        {
            cout << "No carry operation." << endl;
        }
        else if (resposta == 1)
        {
            cout << "1 carry operation." << endl;
        }
        else
        {
            cout << resposta << " carry operations." << endl;
        }
    }

    return 0;
}
