import 'dart:io';

void main() {
  int t = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < t; i++) {
    int n = int.parse(stdin.readLineSync()!);
    print((1 << n) - 1);
  }
}
