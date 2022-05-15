#include <iostream>
#include <cstdlib>

using namespace std;

int somaPA(int a0)
{
    a0 += (abs(a0) % 2);
    int an = a0 + 8;
    int n = 5;

    return ((a0 + an) * n) / 2;
}

int main()
{
    int X;

    while (cin >> X)
    {
        if (X == 0)
        {
            break;
        }

        cout << somaPA(X) << endl;
    }

    return 0;
}