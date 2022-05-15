#include <iostream>

using namespace std;

int main()
{
    int X, Y;

    cin >> X >> Y;

    if (X > Y)
    {
        swap(X, Y);
    }

    for (int i = X + 1; i < Y; ++i)
    {
        if (i % 5 > 1 && i % 5 < 4)
        {
            cout << i << endl;
        }
    }

    return 0;
}