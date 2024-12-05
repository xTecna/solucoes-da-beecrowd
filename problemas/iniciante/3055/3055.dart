import 'dart:io';

void main() {
  int a = int.parse(stdin.readLineSync()!);
  int m = int.parse(stdin.readLineSync()!);

  print(2 * m - a);
}
