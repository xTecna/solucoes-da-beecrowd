#include <cmath>
#include <iomanip>
#include <iostream>

using namespace std;

int main() {
  double L, W;

  while (cin >> L >> W) {
    double maximo = min(L, W) / 2.0;
    double minimo = (-sqrt(L * L - L * W + W * W) + L + W) / 6.0;

    cout << fixed << setprecision(3) << minimo << " 0.000 " << maximo << endl;
  }

  return 0;
}