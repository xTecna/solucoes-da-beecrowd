#include <iostream>
#include <iomanip>
#include <cmath>

using namespace std;

int main()
{
    double a, b, c, delta, R1, R2;

    cin >> a >> b >> c;

    delta = b * b - 4 * a * c;

    if (a != 0 && delta > -1)
    {
        R1 = (-b + sqrt(delta)) / (2 * a);
        R2 = (-b - sqrt(delta)) / (2 * a);

        cout << "R1 = " << setprecision(5) << fixed << R1 << endl;
        cout << "R2 = " << setprecision(5) << fixed << R2 << endl;
    }
    else
    {
        cout << "Impossivel calcular" << endl;
    }

    return 0;
}