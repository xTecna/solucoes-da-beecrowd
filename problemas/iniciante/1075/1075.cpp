#include <iostream>

using namespace std;

int main()
{
    int N;

    cin >> N;

    for (int i = 2; i < 10000; i += N)
    {
        cout << i << endl;
    }

    return 0;
}