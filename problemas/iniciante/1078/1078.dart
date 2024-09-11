import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= 10; ++i) {
    print('$i x $n = ${i * n}');
  }
}
