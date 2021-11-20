#include <iostream>

using namespace std;

int main()
{
    int X, Y;

    cin >> X >> Y;

    cout << (string)((0 <= X && X <= 432 && 0 <= Y && Y <= 468) ? "dentro" : "fora") << endl;

    return 0;
}
