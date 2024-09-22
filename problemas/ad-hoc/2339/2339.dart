import 'dart:io';

void main() {
  List<int> valores =
      stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
  int c = valores[0];
  int p = valores[1];
  int f = valores[2];

  if (p >= c * f) {
    print('S');
  } else {
    print('N');
  }
}
