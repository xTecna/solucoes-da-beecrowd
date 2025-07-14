#include <cmath>
#include <iostream>

using namespace std;

double dist(int x1, int y1, int x2, int y2) {
  return sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2));
}

int main() {
  int L, C, R1, R2;

  while (cin >> L >> C >> R1 >> R2) {
    if (L == 0 && C == 0 && R1 == 0 && R2 == 0) {
      break;
    }

    int x1 = R1;
    int y1 = R1;
    int x2 = L - R2;
    int y2 = C - R2;

    double distancia = dist(x1, y1, x2, y2);
    if (L < 2 * R1 || C < 2 * R1 || L < 2 * R2 || C < 2 * R2 ||
        distancia < (R1 + R2)) {
      cout << "N" << endl;
    } else {
      cout << "S" << endl;
    }
  }

  return 0;
}