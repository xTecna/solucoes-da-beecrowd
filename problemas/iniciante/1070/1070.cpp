#include <iostream>

using namespace std;

int main()
{
    int X;

    cin >> X;
    X += (X % 2 == 0);

    for (int i = 0; i < 12; i += 2)
    {
        cout << X + i << endl;
    }

    return 0;
}