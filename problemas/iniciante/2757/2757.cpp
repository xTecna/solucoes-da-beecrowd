#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    int A, B, C;

    cin >> A >> B >> C;

    cout << "A = " << A << ", B = " << B << ", C = " << C << endl;
    cout << "A = " << setw(10) << A << ", B = " << setw(10) << B << ", C = " << setw(10) << C << endl;

    if (A < 0)
    {
        cout << "A = -" << setw(9) << setfill('0') << abs(A) << ", B = " << setw(10) << setfill('0') << B << ", C = " << setw(10) << setfill('0') << C << endl;
    }
    else
    {
        cout << "A = " << setw(10) << setfill('0') << A << ", B = " << setw(10) << setfill('0') << B << ", C = " << setw(10) << setfill('0') << C << endl;
    }

    cout << "A = " << setw(10) << setfill(' ') << left << A << ", B = " << setw(10) << setfill(' ') << left << B << ", C = " << setw(10) << setfill(' ') << left << C << endl;

    return 0;
}