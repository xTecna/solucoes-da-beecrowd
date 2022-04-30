#include <iostream>

using namespace std;

int main()
{
    for (int i = 1, j = 60; j > -1; i += 3, j -= 5)
    {
        cout << "I=" << i << " J=" << j << endl;
    }

    return 0;
}