#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    double A, B, C;

    cin >> A >> B >> C;

    if (A < B + C && B < A + C && C < A + B)
    {
        cout << "Perimetro = " << setprecision(1) << fixed << A + B + C << endl;
    }
    else
    {
        cout << "Area = " << setprecision(1) << fixed << (A + B) / 2 * C << endl;
    }

    return 0;
}