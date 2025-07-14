#include <bits/stdc++.h>

using namespace std;

class Ponto {
public:
  int x;
  int y;

  Ponto(int x, int y) {
    this->x = x;
    this->y = y;
  }
};

double area(vector<Ponto> &pontos) {
  double resposta = 0.0;
  for (int i = 0; i < pontos.size() - 1; ++i) {
    resposta += (pontos[i].x * pontos[i + 1].y - pontos[i + 1].x * pontos[i].y);
  }
  return fabs(resposta) / 2.0;
}

int main() {
  int x, y;

  vector<Ponto> pontos;
  for (int i = 0; i < 4; ++i) {
    cin >> x >> y;
    pontos.push_back(Ponto(x, y));
  }
  pontos.push_back(pontos[0]);
  double area1 = area(pontos);

  pontos.clear();
  for (int i = 0; i < 4; ++i) {
    cin >> x >> y;
    pontos.push_back(Ponto(x, y));
  }
  pontos.push_back(pontos[0]);
  double area2 = area(pontos);

  if (area1 > area2) {
    cout << "terreno A" << endl;
  } else {
    cout << "terreno B" << endl;
  }

  return 0;
}