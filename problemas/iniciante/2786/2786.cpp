#include <iostream>

using namespace std;

int main()
{
    int L, C;

    cin >> L >> C;
    cout << L * C + (L - 1) * (C - 1) << endl << 2 * (L + C - 2) << endl;

    return 0;
}