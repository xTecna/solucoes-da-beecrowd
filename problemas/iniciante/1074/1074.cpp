#include <iostream>

using namespace std;

int main()
{
    int N, X;

    cin >> N;

    for (int i = 0; i < N; ++i)
    {
        cin >> X;

        if (X == 0)
        {
            cout << "NULL" << endl;
        }
        else if (X > 0)
        {
            if (X % 2)
            {
                cout << "ODD";
            }
            else
            {
                cout << "EVEN";
            }
            cout << " POSITIVE" << endl;
        }
        else
        {
            if (-X % 2)
            {
                cout << "ODD";
            }
            else
            {
                cout << "EVEN";
            }
            cout << " NEGATIVE" << endl;
        }
    }

    return 0;
}