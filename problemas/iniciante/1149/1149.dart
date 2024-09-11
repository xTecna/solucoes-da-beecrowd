import 'dart:io';

int somaPA(int a1, int an, int n) {
  return ((a1 + an) * n) ~/ 2;
}

void main() {
  List<int> valores =
      stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
  int a = valores[0];
  int n = 0;
  for (int i = 1; i < valores.length; ++i) {
    if (valores[i] > 0) {
      n = valores[i];
      break;
    }
  }

  a += 1 - (a % 2);
  print(somaPA(a, a + n - 1, n));
}
