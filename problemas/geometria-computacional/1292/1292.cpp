#include <cmath>
#include <iomanip>
#include <iostream>

using namespace std;

int main() {
  double F;

  while (cin >> F) {
    double lado = F * sin(108 * M_PI / 180) / sin(63 * M_PI / 180);
    cout << setprecision(10) << fixed << lado << endl;
  }

  return 0;
}