#include <iostream>

using namespace std;

int main()
{
    int A1, A2, A3;

    cin >> A1 >> A2 >> A3;
    cout << 2 * min(A2 + 2 * A3, min(A1 + A3, 2 * A1 + A2)) << endl;

    return 0;
}