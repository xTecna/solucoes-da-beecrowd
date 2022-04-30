#include <iostream>

using namespace std;

int main()
{
    int V;

    cin >> V;

    int produto = V;
    for (int i = 0; i < 10; ++i)
    {
        cout << "N[" << i << "] = " << produto << endl;
        produto <<= 1;
    }

    return 0;
}