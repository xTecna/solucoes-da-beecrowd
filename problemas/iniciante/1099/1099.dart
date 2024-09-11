import 'dart:io';

int quantidadeImpares(a, b) {
  return (((b - a) ~/ 2) + 1);
}

int somaPA(a1, an, n) {
  return (((a1 + an) * n) ~/ 2);
}

void main() {
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; ++i) {
    List<int> valores =
      stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
    int x = valores[0];
    int y = valores[1];

    if (x > y) {
      int temp = x;
      x = y;
      y = temp;
    }

    x += (x.abs() % 2) + 1;
    y -= (y.abs() % 2) + 1;

    print(x > y ? 0 : somaPA(x, y, quantidadeImpares(x, y)));
  }
}
