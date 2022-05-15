#include <iostream>

using namespace std;

int main()
{
    int X, Y;

    cin >> X >> Y;

    for (int i = 1; i <= Y; i += X)
    {
        cout << i;
        for (int j = 1; j < X, i + j <= Y; ++j)
        {
            cout << ' ' << i + j;
        }
        cout << endl;
    }

    return 0;
}