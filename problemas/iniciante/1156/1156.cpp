#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    double S;

    S = 0.0;
    for (int i = 0; i < 20; ++i)
    {
        S += (double)(2 * i + 1) / (1 << i);
    }

    cout << setprecision(2) << fixed << S << endl;

    return 0;
}