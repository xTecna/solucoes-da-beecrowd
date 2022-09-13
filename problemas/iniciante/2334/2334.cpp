#include <iostream>

using namespace std;

int main()
{
    string P;

    while (cin >> P)
    {
        if (P == "-1")
        {
            break;
        }

        if (P != "0")
        {
            int n = P.length() - 1;
            while (P[n] == '0')
            {
                P[n--] = '9';
            }
            --P[n];
        }

        if (P.length() > 1 && P[0] == '0')
        {
            P = P.substr(1);
        }

        cout << P << endl;
    }

    return 0;
}