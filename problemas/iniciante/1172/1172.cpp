#include <iostream>

using namespace std;

int main()
{
    int X;

    for (int i = 0; i < 10; ++i)
    {
        cin >> X;
        cout << "X[" << i << "] = " << ((X <= 0) ? 1 : X) << endl;
    }

    return 0;
}