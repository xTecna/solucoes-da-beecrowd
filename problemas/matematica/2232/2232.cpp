#include <iostream>

using namespace std;

int main()
{
    int T, N;

    cin >> T;
    for (int i = 0; i < T; ++i)
    {
        cin >> N;
        cout << (1 << N) - 1 << endl;
    }

    return 0;
}
