#include <iostream>

using namespace std;

int somaPA(int an)
{
    return (an * (an + 1)) / 2;
}

int main()
{
    int N, k;

    k = 1;
    while (cin >> N)
    {
        cout << "Caso " << k++ << ": " << somaPA(N) + 1 << " numero" << (N == 0 ? "" : "s") << endl;

        cout << 0;
        for (int i = 1; i <= N; ++i)
        {
            for (int j = 0; j < i; ++j)
            {
                cout << ' ' << i;
            }
        }
        cout << endl
             << endl;
    }

    return 0;
}