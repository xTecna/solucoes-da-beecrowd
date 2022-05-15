#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    double X;

    cin >> X;

    for (int i = 0; i < 100; ++i)
    {
        cout << "N[" << i << "] = " << setprecision(4) << fixed << X << endl;
        X /= 2;
    }

    return 0;
}