#include <iostream>

using namespace std;

int main()
{
    int N;

    cin >> N;

    for (int i = 0; i < N; ++i)
    {
        for (int j = 0; j < 3; ++j)
        {
            cout << 4 * i + 1 + j << ' ';
        }
        cout << "PUM" << endl;
    }

    return 0;
}