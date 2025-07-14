#include <cmath>
#include <iomanip>
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

double distancia(Ponto a, Ponto b) {
  return sqrt((a.x - b.x) * (a.x - b.x) + (a.y - b.y) * (a.y - b.y));
}

double produto(Vetor a, Vetor b) { return a.x * b.y - a.y * b.x; }

int setor(Ponto p, Ponto q, Ponto r) {
  double prod = produto(Vetor(p, q), Vetor(p, r));
  if (prod > 0.0) {
    return 0;
  }
  if (prod == 0.0) {
    return -1;
  }
  return 1;
}

int main() {
  int N, H;
  Ponto p1, p2, p;
  int casualidades = 0, planetas[2] = {0, 0}, habitantes[2] = {0, 0};

  cin >> p1.x >> p1.y >> p2.x >> p2.y;

  cin >> N;
  for (int i = 0; i < N; ++i) {
    cin >> p.x >> p.y >> H;
    int s = setor(p1, p2, p);
    if (s == -1) {
      casualidades += 1;
    } else {
      planetas[s] += 1;
      habitantes[s] += H;
    }
  }

  cout << "Relatorio Vogon #35987-2" << endl;
  cout << "Distancia entre referencias: " << fixed << setprecision(2)
       << distancia(p1, p2) << " anos-luz" << endl;
  cout << "Setor Oeste:" << endl;
  cout << "- " << planetas[0] << " planeta(s)" << endl;
  cout << "- " << habitantes[0] << " bilhao(oes) de habitante(s)" << endl;
  cout << "Setor Leste:" << endl;
  cout << "- " << planetas[1] << " planeta(s)" << endl;
  cout << "- " << habitantes[1] << " bilhao(oes) de habitante(s)" << endl;
  cout << "Casualidades: " << casualidades << " planeta(s)" << endl;

  return 0;
}