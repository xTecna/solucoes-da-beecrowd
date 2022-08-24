#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    double V, D;
    double PI = 3.14;

    while (cin >> V >> D)
    {
        D /= 2;

        double area = PI * D * D;
        double altura = V / area;

        cout << "ALTURA = " << setprecision(2) << fixed << altura << endl;
        cout << "AREA = " << setprecision(2) << fixed << area << endl;
    }

    return 0;
}