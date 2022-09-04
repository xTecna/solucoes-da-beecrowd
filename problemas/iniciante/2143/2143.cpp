#include <iostream>

using namespace std;

int main()
{
    int T, N;

    while (cin >> T)
    {
        for (int i = 0; i < T; ++i)
        {
            cin >> N;

            int pontas = 2 - (N % 2);
            cout << pontas + 2 * (N - pontas) << endl;
        }
    }

    return 0;
}