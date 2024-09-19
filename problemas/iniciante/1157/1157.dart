import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= n; ++i) {
    if (n % i == 0) {
      print(i);
    }
  }
}
