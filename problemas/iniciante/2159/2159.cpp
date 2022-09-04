#include <iostream>
#include <iomanip>
#include <cmath>

using namespace std;

double limiteInferior(int n)
{
    return n / log(n);
}

double limiteSuperior(int n)
{
    return 1.25506 * n / log(n);
}

int main()
{
    int n;

    cin >> n;
    cout << setprecision(1) << fixed << limiteInferior(n) << ' ' << setprecision(1) << fixed << limiteSuperior(n) << endl;

    return 0;
}