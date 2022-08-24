#include <iostream>

using namespace std;

int main()
{
    int C, N;

    cin >> C;
    for (int i = 0; i < C; ++i)
    {
        cin >> N;
        cout << N % 2 << endl;
    }

    return 0;
}