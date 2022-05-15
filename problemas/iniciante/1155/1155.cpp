#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    double S = 0.0;
    for (int i = 1; i < 101; ++i)
    {
        S += 1.0 / i;
    }
    cout << setprecision(2) << fixed << S << endl;

    return 0;
}