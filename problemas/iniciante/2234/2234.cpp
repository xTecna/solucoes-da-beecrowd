#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    int H, P;

    cin >> H >> P;
    cout << setprecision(2) << fixed << (double)H / P << endl;

    return 0;
}