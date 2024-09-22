import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n; i++) {
    int x = int.parse(stdin.readLineSync()!);
    print(x % 2);
  }
}
