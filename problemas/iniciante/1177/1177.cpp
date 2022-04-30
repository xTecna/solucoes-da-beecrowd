#include <iostream>

using namespace std;

int main()
{
    int N;

    cin >> N;

    for (int i = 0; i < 1000; ++i)
    {
        cout << "N[" << i << "] = " << i % N << endl;
    }

    return 0;
}