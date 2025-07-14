#include <algorithm>
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

vector<Ponto> pontos;

bool antiHorario(Ponto p, Ponto q, Ponto r) {
  return produto(Vetor(p, q), Vetor(p, r)) > 0.0;
}

bool contornoConvexo() {
  int n = pontos.size();
  if (n < 3)
    return false;

  vector<int> resultado;

  int p = 0, q;

  do {
    resultado.push_back(p);

    q = (p + 1) % n;
    for (int i = 0; i < n; ++i) {
      if (antiHorario(pontos[p], pontos[i], pontos[q])) {
        q = i;
      }
    }

    p = q;
  } while (p != 0);

  sort(resultado.begin(), resultado.end());
  for (int i = resultado.size() - 1; i > -1; --i) {
    pontos.erase(pontos.begin() + resultado[i]);
  }

  return true;
}

int main() {
  int N, camadas;

  while (cin >> N) {
    if (!N)
      break;
    pontos.assign(N, Ponto());

    for (int i = 0; i < N; ++i) {
      cin >> pontos[i].x >> pontos[i].y;
    }
    sort(pontos.begin(), pontos.end(), comp);

    camadas = 0;
    while (contornoConvexo()) {
      ++camadas;
    }

    cout << (string)(camadas % 2 ? "Take this onion to the lab!"
                                 : "Do not take this onion to the lab!")
         << endl;
  }

  return 0;
}