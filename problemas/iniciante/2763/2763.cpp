#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    int X, Y, Z, D;
    char caractere;

    cin >> X >> caractere >> Y >> caractere >> Z >> caractere >> D;
    cout << setw(3) << setfill('0') << X << endl;
    cout << setw(3) << setfill('0') << Y << endl;
    cout << setw(3) << setfill('0') << Z << endl;
    cout << setw(2) << setfill('0') << D << endl;

    return 0;
}