#include <iostream>

using namespace std;

int main()
{
    int N, T;

    cin >> N;
    for (int i = 0; i < N; ++i)
    {
        cin >> T;

        T = 2015 - T;

        if (T <= 0)
        {
            cout << 1 - T << " A.C." << endl;
        }
        else
        {
            cout << T << " D.C." << endl;
        }
    }

    return 0;
}