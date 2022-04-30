#include <iostream>

using namespace std;

int main()
{
    int k = 7;
    for (int i = 1; i < 10; i += 2)
    {
        for (int j = k; j > k - 3; --j)
        {
            cout << "I=" << i << " J=" << j << endl;
        }
        k += 2;
    }

    return 0;
}