#include <iostream>

using namespace std;

int main()
{
    int N;

    cin >> N;

    for (int i = 1; i < 11; ++i)
    {
        cout << i << " x " << N << " = " << i * N << endl;
    }

    return 0;
}