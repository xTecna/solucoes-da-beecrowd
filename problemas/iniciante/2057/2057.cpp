#include <iostream>

using namespace std;

int main()
{
    int S, T, F;

    cin >> S >> T >> F;
    cout << (24 + S + T + F) % 24 << endl;

    return 0;
}