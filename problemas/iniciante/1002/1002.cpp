#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    double raio;
    const double PI = 3.14159;

    cin >> raio;

    cout << "A=" << setprecision(4) << fixed << PI * raio * raio << endl;

    return 0;
}