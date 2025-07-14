#include <cmath>
#include <iomanip>
#include <iostream>

using namespace std;

int main() {
  int C, N, L, b, B, H;

  cin >> C;
  for (int k = 0; k < C; ++k) {
    cin >> N >> L;
    cin >> b >> B >> H;

    int inicio = 0;
    int fim = 10000 * H;

    int meio;
    while (inicio < fim) {
      meio = (inicio + fim) / 2;
      double altura = meio / 10000.0;

      double raio = b + (B - b) * (altura / H);
      double volume =
          N * (M_PI * altura * (raio * raio + raio * b + b * b)) / 3.0;

      if (fabs(volume - L) < 0.0001) {
        break;
      } else if (volume < L) {
        inicio = meio + 1;
      } else {
        fim = meio;
      }
    }

    cout << fixed << setprecision(2) << meio / 10000.0 << endl;
  }

  return 0;
}