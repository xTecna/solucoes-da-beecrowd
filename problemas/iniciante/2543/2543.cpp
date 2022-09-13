#include <iostream>

using namespace std;

int main()
{
    int N, I, identificador, j;

    while (cin >> N >> I)
    {
        int gameplays = 0;
        for (int i = 0; i < N; ++i)
        {
            cin >> identificador >> j;

            if (identificador == I && j == 0)
            {
                ++gameplays;
            }
        }

        cout << gameplays << endl;
    }

    return 0;
}