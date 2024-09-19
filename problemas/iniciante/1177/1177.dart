import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < 1000; ++i) {
    print('N[${i}] = ${i % n}');
  }
}
