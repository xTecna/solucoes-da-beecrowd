#include <algorithm>
#include <cmath>
#include <iomanip>
#include <iostream>
#include <vector>
#define EPSILON 0.0001

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

  Reta(Ponto p1, Ponto p2) {
    this->m = (p1.y - p2.y) / (p1.x - p2.x);
    this->b = p1.y - m * p1.x;
  }
};

int main() {
  int T, P, G;
  Ponto luz, goemon;
  vector<pair<int, int>> paredes;

  cin >> T;
  for (int k = 0; k < T; ++k) {
    cin >> luz.x >> luz.y;

    cin >> P;
    paredes.resize(P);
    for (int i = 0; i < P; ++i) {
      cin >> paredes[i].first >> paredes[i].second;
    }
    sort(paredes.begin(), paredes.end());

    cin >> G;
    int resposta = 0;
    for (int i = 0; i < G; ++i) {
      cin >> goemon.x >> goemon.y;

      Reta visao = Reta(luz, goemon);
      double y_parede = visao.b;

      int inicio = 0, fim = P;
      while (inicio < fim) {
        int meio = (inicio + fim) / 2;

        if (y_parede < paredes[meio].first + EPSILON) {
          fim = meio;
        } else if (y_parede > paredes[meio].second - EPSILON) {
          inicio = meio + 1;
        } else {
          resposta += 1;
          break;
        }
      }
    }

    cout << resposta << endl;
  }

  return 0;
}