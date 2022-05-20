#include <iostream>

using namespace std;

int main()
{
    int N;

    while (cin >> N)
    {
        cout << "vai ter " << (N == 0 ? "copa" : "duas") << "!" << endl;
    }

    return 0;
}