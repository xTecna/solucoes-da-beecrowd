#include <bits/stdc++.h>

using namespace std;

class Ponto {
public:
  unsigned long long int x;
  unsigned long long int y;

  Ponto(unsigned long long int x, unsigned long long int y) {
    this->x = x;
    this->y = y;
  }
};

unsigned long long int distancia(Ponto a, Ponto b) {
  return (a.x - b.x) * (a.x - b.x) + (a.y - b.y) * (a.y - b.y);
}

int main() {
  int N;
  unsigned long long X, Y;

  while (true) {
    cin >> N;
    if (N == 0) {
      break;
    }

    vector<Ponto> pontos;
    for (int i = 0; i < N; ++i) {
      cin >> X >> Y;
      pontos.push_back(Ponto(X, Y));
    }

    long long int resposta = 0;
    for (int i = 0; i < N; ++i) {
      map<unsigned long long int, long long int> distancias;
      for (int j = 0; j < N; ++j) {
        unsigned long long int dist = distancia(pontos[i], pontos[j]);
        if (!distancias.count(dist)) {
          distancias[dist] = 0;
        }
        distancias[dist] += 1;
      }

      for (map<unsigned long long int, long long int>::iterator it =
               distancias.begin();
           it != distancias.end(); ++it) {
        if (it->second > 1) {
          resposta += (it->second * (it->second - 1)) / 2;
        }
      }
    }

    cout << resposta << endl;
  }

  return 0;
}