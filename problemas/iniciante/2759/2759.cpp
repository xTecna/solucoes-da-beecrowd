#include <iostream>

using namespace std;

int main()
{
    char A, B, C;

    cin >> A >> B >> C;

    cout << "A = " << A << ", B = " << B << ", C = " << C << endl;
    cout << "A = " << B << ", B = " << C << ", C = " << A << endl;
    cout << "A = " << C << ", B = " << A << ", C = " << B << endl;

    return 0;
}