#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    int N;

    while (cin >> N)
    {
        if (N == 0)
        {
            break;
        }

        for (int i = 0; i < N; ++i)
        {
            cout << setw(3) << setfill(' ') << i + 1;
            for (int j = 1; j < N; ++j)
            {
                cout << setw(4) << setfill(' ') << abs(i - j) + 1;
            }
            cout << endl;
        }
        cout << endl;
    }

    return 0;
}