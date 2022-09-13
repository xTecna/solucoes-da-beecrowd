#include <iostream>

using namespace std;

int main()
{
    int N, T, D;
    double V, Vmax;

    while (cin >> N)
    {
        Vmax = 0;
        for (int i = 1; i <= N; ++i)
        {
            cin >> T >> D;

            V = (double)D / T;
            if (V > Vmax)
            {
                Vmax = V;
                cout << i << endl;
            }
        }
    }

    return 0;
}