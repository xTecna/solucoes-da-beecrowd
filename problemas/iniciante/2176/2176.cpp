#include <iostream>

using namespace std;

int main()
{
    string bits;
    int pares = 0;

    cin >> bits;
    for (int i = 0; i < bits.length(); ++i)
    {
        pares += bits[i] - '0';
    }

    cout << bits << (pares % 2) << endl;

    return 0;
}