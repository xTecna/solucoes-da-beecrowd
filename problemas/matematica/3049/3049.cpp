#include <iostream>

using namespace std;

int main()
{
    int B, T;

    cin >> B >> T;

    if (B + T > 160)
    {
        cout << 1 << endl;
    }
    else if (B + T < 160)
    {
        cout << 2 << endl;
    }
    else
    {
        cout << 0 << endl;
    }

    return 0;
}