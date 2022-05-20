#include <iostream>
#include <cmath>

using namespace std;

int main()
{
    int A, B, C;

    while (cin >> A)
    {
        if (A == 0)
        {
            break;
        }

        cin >> B >> C;
        cout << floor(sqrt(A * B * 100.0 / C)) << endl;
    }

    return 0;
}