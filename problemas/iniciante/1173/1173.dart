import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < 10; ++i) {
    print('N[${i}] = ${n}');
    n *= 2;
  }
}
