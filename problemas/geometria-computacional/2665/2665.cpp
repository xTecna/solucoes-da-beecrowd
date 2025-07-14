#include <cmath>
#include <iostream>
using namespace std;

class Ponto {
public:
  int x;
  int y;

  Ponto() {
    this->x = 0;
    this->y = 0;
  }

  Ponto(int x, int y) {
    this->x = x;
    this->y = y;
  }
};

class Vetor {
public:
  int x;
  int y;

  Vetor(Ponto a, Ponto b) {
    this->x = b.x - a.x;
    this->y = b.y - a.y;
  }
};

int N, Xa, Xb;
Ponto pa, pb;
Ponto P[100];
double T[100];

double produto(Vetor a, Vetor b) { return a.x * b.y - a.y * b.x; }

bool antiHorario(Ponto p, Ponto q, Ponto r) {
  return produto(Vetor(p, q), Vetor(p, r)) > 0.0;
}

bool dentro(Ponto a, Ponto t1, Ponto t2, Ponto t3) {
  return !antiHorario(t1, t2, a) && antiHorario(t3, t2, a);
}

int resolve(int n) {
  if (T[n] != -1)
    return T[n];

  int resposta = 1;
  for (int i = 0; i < N; ++i) {
    if (dentro(P[i], pa, P[n], pb)) {
      resposta = max(resposta, resolve(i) + 1);
    }
  }
  T[n] = resposta;

  return T[n];
}

int main() {
  int Xi, Yi;

  cin >> N >> Xa >> Xb;
  pa = Ponto(Xa, 0);
  pb = Ponto(Xb, 0);

  for (int i = 0; i < N; ++i) {
    cin >> P[i].x >> P[i].y;
    T[i] = -1;
  }

  int resposta = 0;
  for (int i = 0; i < N; ++i) {
    resposta = max(resposta, resolve(i));
  }
  cout << resposta << endl;

  return 0;
}