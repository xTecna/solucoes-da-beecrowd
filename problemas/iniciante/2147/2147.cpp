#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    int C;
    string galopeira;

    cin >> C;
    for (int i = 0; i < C; ++i)
    {
        cin >> galopeira;
        cout << setprecision(2) << fixed << 0.08 + 0.01 * (galopeira.length() - 8) << endl;
    }

    return 0;
}