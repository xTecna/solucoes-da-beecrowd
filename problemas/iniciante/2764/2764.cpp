#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    char barra;
    int D, M, A;

    cin >> D >> barra >> M >> barra >> A;

    cout << setw(2) << setfill('0') << M << '/' << setw(2) << setfill('0') << D << '/' << setw(2) << setfill('0') << A << endl;
    cout << setw(2) << setfill('0') << A << '/' << setw(2) << setfill('0') << M << '/' << setw(2) << setfill('0') << D << endl;
    cout << setw(2) << setfill('0') << D << '-' << setw(2) << setfill('0') << M << '-' << setw(2) << setfill('0') << A << endl;

    return 0;
}