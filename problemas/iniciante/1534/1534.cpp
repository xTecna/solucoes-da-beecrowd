#include <iostream>

using namespace std;

int main()
{
    int N;

    while (cin >> N)
    {
        for (int i = 0; i < N; ++i)
        {
            for (int j = 0; j < N; ++j)
            {
                if (i == N - 1 - j)
                {
                    cout << 2;
                }
                else if (i == j)
                {
                    cout << 1;
                }
                else
                {
                    cout << 3;
                }
            }
            cout << endl;
        }
    }

    return 0;
}