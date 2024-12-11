import 'dart:io';

void main() {
  List<int> valores =
      stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
  int a = valores[0];
  int b = valores[1];
  int c = valores[2];

  if (a == b ||
      a == c ||
      b == c ||
      (a + b) == c ||
      (a + c) == b ||
      (b + c) == a) {
    print("S");
  } else {
    print("N");
  }
}
