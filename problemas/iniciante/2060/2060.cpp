#include <iostream>
#include <vector>

using namespace std;

int main()
{
    int N, L;
    vector<int> multiplos;

    multiplos.assign(6, 0);

    cin >> N;
    for (int i = 0; i < N; ++i)
    {
        cin >> L;

        for (int j = 2; j < 6; ++j)
        {
            if (L % j == 0)
            {
                ++multiplos[j];
            }
        }
    }

    for (int i = 2; i < 6; ++i)
    {
        cout << multiplos[i] << " Multiplo(s) de " << i << endl;
    }

    return 0;
}