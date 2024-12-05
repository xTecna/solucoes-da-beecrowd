#include <iostream>

using namespace std;

int main() {
  int nota;

  cin >> nota;
  if (nota > 85) {
    cout << "A" << endl;
  } else if (nota > 60) {
    cout << "B" << endl;
  } else if (nota > 35) {
    cout << "C" << endl;
  } else if (nota > 0) {
    cout << "D" << endl;
  } else {
    cout << "E" << endl;
  }

  return 0;
}