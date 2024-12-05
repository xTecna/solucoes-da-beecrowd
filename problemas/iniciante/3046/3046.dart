import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);

  print((n + 1) * (n + 2) ~/ 2);
}
