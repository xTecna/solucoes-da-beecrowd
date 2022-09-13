#include <iostream>
#include <cmath>

using namespace std;

int main()
{
    int N;

    while (cin >> N)
    {
        cout << (int)(log(N) / log(2)) << endl;
    }

    return 0;
}