#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    float A, B;
    double C, D;

    cin >> A >> B;
    cin >> C >> D;

    cout << "A = " << setprecision(6) << fixed << A << ", B = " << setprecision(6) << fixed << B << endl;
    cout << "C = " << setprecision(6) << fixed << C << ", D = " << setprecision(6) << fixed << D << endl;
    cout << "A = " << setprecision(1) << fixed << A << ", B = " << setprecision(1) << fixed << B << endl;
    cout << "C = " << setprecision(1) << fixed << C << ", D = " << setprecision(1) << fixed << D << endl;
    cout << "A = " << setprecision(2) << fixed << A << ", B = " << setprecision(2) << fixed << B << endl;
    cout << "C = " << setprecision(2) << fixed << C << ", D = " << setprecision(2) << fixed << D << endl;
    cout << "A = " << setprecision(3) << fixed << A << ", B = " << setprecision(3) << fixed << B << endl;
    cout << "C = " << setprecision(3) << fixed << C << ", D = " << setprecision(3) << fixed << D << endl;
    cout << "A = " << scientific << uppercase << setprecision(3) << A << ", B = " << scientific << uppercase << setprecision(3) << B << endl;
    cout << "C = " << scientific << uppercase << setprecision(3) << C << ", D = " << scientific << uppercase << setprecision(3) << D << endl;
    cout << "A = " << setprecision(0) << fixed << A << ", B = " << setprecision(0) << fixed << B << endl;
    cout << "C = " << setprecision(0) << fixed << C << ", D = " << setprecision(0) << fixed << D << endl;

    return 0;
}