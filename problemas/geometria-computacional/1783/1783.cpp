#include <iomanip>
#include <iostream>
#define EPSILON 0.001

using namespace std;

class Ponto {
public:
  double x, y;

  Ponto() {
    this->x = 0;
    this->y = 0;
  }

  Ponto(double x, double y) {
    this->x = x;
    this->y = y;
  }
};

class Reta {
public:
  double m, b;

  Reta() {
    this->m = 0;
    this->b = 0;
  }

  Reta(double m, double b, Ponto p1, Ponto p2) {
    this->m = m;
    this->b = b;
  }

  Reta(Ponto p1, Ponto p2) {
    if (p1.x - p2.x == 0) {
      this->m = 9999.9;
    } else {
      this->m = (p1.y - p2.y) / (p1.x - p2.x);
    }
    this->b = p1.y - m * p1.x;
  }

  Reta perpendicular(Ponto p) {
    double m;
    if (this->m == 0) {
      m = -9999.9;
    } else {
      m = -1 / this->m;
    }
    return Reta(m, p.y - m * p.x, p, p);
  }
};

Ponto meio(Ponto p1, Ponto p2) {
  return Ponto((p1.x + p2.x) / 2.0, (p1.y + p2.y) / 2.0);
}

Ponto interseccao(Reta r1, Reta r2) {
  double x = (r2.b - r1.b) / (r1.m - r2.m);
  return Ponto(x, r1.m * x + r1.b);
}

int main() {
  int N;

  cin >> N;
  for (int k = 1; k <= N; ++k) {
    Ponto p1_antes, p2_antes;
    cin >> p1_antes.x >> p1_antes.y >> p2_antes.x >> p2_antes.y;

    Ponto p1_depois, p2_depois;
    cin >> p1_depois.x >> p1_depois.y >> p2_depois.x >> p2_depois.y;

    Reta r1 = Reta(p1_antes, p1_depois);
    Reta r2 = Reta(p2_antes, p2_depois);

    Ponto meio1 = meio(p1_antes, p1_depois);
    Ponto meio2 = meio(p2_antes, p2_depois);

    r1 = r1.perpendicular(meio1);
    r2 = r2.perpendicular(meio2);

    Ponto centro = interseccao(r1, r2);
    if (centro.x > -EPSILON && centro.x < EPSILON) {
      centro.x = 0.0;
    }
    if (centro.y > -EPSILON && centro.y < EPSILON) {
      centro.y = 0.0;
    }

    cout << "Caso #" << k << ": " << fixed << setprecision(2) << centro.x << " "
         << centro.y << endl;
  }

  return 0;
}