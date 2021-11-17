#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    int X;
    double Y, consumo;

    cin >> X >> Y;

    consumo = X / Y;

    cout << setprecision(3) << fixed << consumo << " km/l" << endl;

    return 0;
}