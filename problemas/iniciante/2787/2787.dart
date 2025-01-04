import 'dart:io';

void main() {
  int l = int.parse(stdin.readLineSync()!);
  int c = int.parse(stdin.readLineSync()!);

  print(1 - ((l % 2) ^ (c % 2)));
}
