#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    double R;
    double volume;
    const double PI = 3.14159;

    cin >> R;

    volume = 4.0 / 3.0 * PI * R * R * R;

    cout << "VOLUME = " << setprecision(3) << fixed << volume << endl;

    return 0;
}