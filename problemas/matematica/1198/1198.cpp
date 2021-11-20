#include <iostream>

using namespace std;

int main()
{
    unsigned long long int a, b;

    while (cin >> a >> b)
    {
        cout << (a > b ? a - b : b - a) << endl;
    }

    return 0;
}
