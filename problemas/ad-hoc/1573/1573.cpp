#include <iostream>
#include <cmath>

using namespace std;

int main()
{
    int A, B, C;

    while (cin >> A >> B >> C)
    {
        if (!A && !B && !C)
            break;

        cout << floor(cbrt(A * B * C)) << endl;
    }

    return 0;
}
