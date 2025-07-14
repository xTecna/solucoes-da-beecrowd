#include <algorithm>
#include <iostream>
using namespace std;

struct Ponto {
  int x;
  int y;

  Ponto() {
    x = 0;
    y = 0;
  }

  Ponto(int a, int b) {
    x = a;
    y = b;
  }

  bool operator<(const Ponto &pt) { return x < pt.x; }
};

int main() {
  Ponto P[3000];
  int N, X, Y;

  cin >> N;

  for (int i = 0; i < N; ++i) {
    cin >> X >> Y;
    P[i] = Ponto(X, Y);
  }

  sort(P, P + N);

  int resposta = 0;
  for (int i = 0; i < N; ++i) {
    int y_acima = 999999999;
    int y_abaixo = -999999999;
    for (int j = i + 1; j < N; ++j) {
      if (P[j].y > P[i].y) {
        if (y_acima >= P[j].y) {
          resposta += 1;
          y_acima = P[j].y;
        }
      } else {
        if (y_abaixo <= P[j].y) {
          resposta += 1;
          y_abaixo = P[j].y;
        }
      }
    }
  }

  cout << resposta << endl;

  return 0;
}