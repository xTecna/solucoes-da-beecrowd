#include <algorithm>
#include <cmath>
#include <iomanip>
#include <iostream>
#include <vector>

using namespace std;

class Ponto {
public:
  int x, y;
};

bool comp(Ponto a, Ponto b) {
  if (a.x == b.x)
    return a.y < b.y;
  return a.x < b.x;
}

class Vetor {
public:
  int x, y;

  Vetor(Ponto a, Ponto b) {
    this->x = b.x - a.x;
    this->y = b.y - a.y;
  }
};

double produto(Vetor a, Vetor b) { return a.x * b.y - a.y * b.x; }

bool antiHorario(Ponto p, Ponto q, Ponto r) {
  return produto(Vetor(p, q), Vetor(p, r)) > 0.0;
}

vector<Ponto> contornoConvexo(const vector<Ponto> &pontos) {
  vector<Ponto> resultado;

  int n = pontos.size();
  if (n < 3)
    return resultado;

  int p = 0, q;

  do {
    resultado.push_back(pontos[p]);

    q = (p + 1) % n;
    for (int i = 0; i < n; ++i) {
      if (antiHorario(pontos[p], pontos[i], pontos[q])) {
        q = i;
      }
    }

    p = q;
  } while (p != 0);

  return resultado;
}

double distancia(Ponto a, Ponto b) {
  return sqrt((b.x - a.x) * (b.x - a.x) + (b.y - a.y) * (b.y - a.y));
}

int main() {
  int N, camadas;
  vector<Ponto> pontos;

  while (cin >> N) {
    if (!N)
      break;
    pontos.assign(N, Ponto());

    for (int i = 0; i < N; ++i) {
      cin >> pontos[i].x >> pontos[i].y;
    }
    sort(pontos.begin(), pontos.end(), comp);

    vector<Ponto> resultado = contornoConvexo(pontos);

    double resposta = distancia(resultado[resultado.size() - 1], resultado[0]);
    for (int i = 1; i < resultado.size(); ++i) {
      resposta += distancia(resultado[i - 1], resultado[i]);
    }

    cout << "Tera que comprar uma fita de tamanho " << fixed << setprecision(2)
         << resposta << "." << endl;
  }

  return 0;
}