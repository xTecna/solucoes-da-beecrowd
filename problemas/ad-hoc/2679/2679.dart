import 'dart:io';

void main() {
  int x = int.parse(stdin.readLineSync()!);
  print(x + 2 - (x % 2));
}
