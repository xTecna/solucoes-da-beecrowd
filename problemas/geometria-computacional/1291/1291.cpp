#include <cmath>
#include <iomanip>
#include <iostream>

using namespace std;

int main() {
  double L;

  while (cin >> L) {
    double Asegmento = (L * L * (4.0 * M_PI - 3.0 * sqrt(3.0))) / 24.0;
    double Acomplementar = ((4.0 - M_PI) * L * L) / 4.0;
    double Aquadrado = L * L;

    double A3 = 8.0 * Asegmento + 8.0 * Acomplementar - 4.0 * Aquadrado;
    double A2 = 4.0 * Acomplementar - 2.0 * A3;
    double A1 = Aquadrado - A2 - A3;

    cout << fixed << setprecision(3) << A1 << ' ' << A2 << ' ' << A3 << endl;
  }

  return 0;
}