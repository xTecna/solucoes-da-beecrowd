#include <iostream>

using namespace std;

int main()
{
    int A, B, C;

    while (cin >> A >> B >> C)
    {
        if (A + B + C == 1)
        {
            if (A == 1)
                cout << 'A' << endl;
            else if (B == 1)
                cout << 'B' << endl;
            else
                cout << 'C' << endl;
        }
        else if (A + B + C == 2)
        {
            if (A == 0)
                cout << 'A' << endl;
            else if (B == 0)
                cout << 'B' << endl;
            else
                cout << 'C' << endl;
        }
        else
        {
            cout << '*' << endl;
        }
    }

    return 0;
}
