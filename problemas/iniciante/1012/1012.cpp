#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    double A, B, C;
    const double PI = 3.14159;

    cin >> A >> B >> C;

    cout << "TRIANGULO: " << setprecision(3) << fixed << (A * C) / 2.0 << endl;
    cout << "CIRCULO: " << setprecision(3) << fixed << PI * C * C << endl;
    cout << "TRAPEZIO: " << setprecision(3) << fixed << (A + B) / 2.0 * C << endl;
    cout << "QUADRADO: " << setprecision(3) << fixed << B * B << endl;
    cout << "RETANGULO: " << setprecision(3) << fixed << A * B << endl;

    return 0;
}