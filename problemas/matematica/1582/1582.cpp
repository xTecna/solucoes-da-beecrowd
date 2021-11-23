#include <iostream>

using namespace std;

int mdc(int a, int b)
{
    return (b == 0) ? a : mdc(b, a % b);
}

bool pitagorica(int a, int b, int c)
{
    return a * a + b * b == c * c || a * a + c * c == b * b || b * b + c * c == a * a;
}

bool primitiva(int a, int b, int c)
{
    return mdc(a, mdc(b, c)) == 1;
}

int main()
{
    int x, y, z;

    while (cin >> x >> y >> z)
    {
        cout << "tripla";
        if (pitagorica(x, y, z))
        {
            cout << " pitagorica";

            if (primitiva(x, y, z))
                cout << " primitiva";
        }
        cout << endl;
    }

    return 0;
}
