#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    double A, B;

    cin >> A >> B;
    cout << setprecision(2) << fixed << 100 * B / A - 100 << '%' << endl;

    return 0;
}