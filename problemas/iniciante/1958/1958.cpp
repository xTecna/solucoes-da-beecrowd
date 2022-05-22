#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    double X;

    cin >> X;
    cout << scientific << showpos << setprecision(4) << uppercase << X << endl;

    return 0;
}