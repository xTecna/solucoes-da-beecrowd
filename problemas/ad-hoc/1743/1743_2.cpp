#include <iostream>

using namespace std;

int main()
{
    int X, Y, a;

    X = 0;
    for (int i = 0; i < 5; ++i)
    {
        cin >> a;
        X *= 2;
        X += a;
    }

    Y = 0;
    for (int i = 0; i < 5; ++i)
    {
        cin >> a;
        Y *= 2;
        Y += a;
    }

    cout << ((X ^ Y) == 31 ? 'Y' : 'N') << endl;

    return 0;
}
