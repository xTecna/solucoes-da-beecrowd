#include <iostream>
#include <map>

using namespace std;

int main() {
  int C, P;
  char time1, time2;

  map<char, map<char, int>> regras;
  regras['R']['G'] = 2;
  regras['R']['B'] = 1;
  regras['G']['R'] = 1;
  regras['G']['B'] = 2;
  regras['B']['R'] = 2;
  regras['B']['G'] = 1;

  map<char, string> nomes;
  nomes['R'] = "red";
  nomes['G'] = "green";
  nomes['B'] = "blue";

  cin >> C;
  for (int k = 0; k < C; ++k) {
    cin >> P;

    map<char, int> pontos;
    pontos['R'] = 0;
    pontos['G'] = 0;
    pontos['B'] = 0;

    for (int i = 0; i < P; ++i) {
      cin >> time1 >> time2;
      pontos[time1] += regras[time1][time2];
    }

    if (pontos['R'] == pontos['G'] && pontos['G'] == pontos['B']) {
      cout << "trempate" << endl;
    } else if (pontos['R'] > pontos['G'] && pontos['R'] > pontos['B']) {
      cout << "red" << endl;
    } else if (pontos['G'] > pontos['R'] && pontos['G'] > pontos['B']) {
      cout << "green" << endl;
    } else if (pontos['B'] > pontos['R'] && pontos['B'] > pontos['G']) {
      cout << "blue" << endl;
    } else {
      cout << "empate" << endl;
    }
  }

  return 0;
}