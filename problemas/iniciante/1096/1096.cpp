#include <iostream>

using namespace std;

int main()
{
    for (int i = 1; i < 10; i += 2)
    {
        for (int j = 7; j > 4; --j)
        {
            cout << "I=" << i << " J=" << j << endl;
        }
    }

    return 0;
}