#include <iostream>

using namespace std;

int main()
{
    long long int X, M;

    while (cin >> X >> M)
    {
        if (X == 0 && M == 0)
        {
            break;
        }

        cout << X * M << endl;
    }

    return 0;
}