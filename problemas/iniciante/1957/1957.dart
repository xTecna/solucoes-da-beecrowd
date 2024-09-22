import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  print(n.toRadixString(16).toUpperCase());
}
