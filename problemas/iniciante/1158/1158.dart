import 'dart:io';

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

    x += 1 - (x.abs() % 2);

    print(somaPA(x, x + 2 * (y - 1), y));
  }
}
