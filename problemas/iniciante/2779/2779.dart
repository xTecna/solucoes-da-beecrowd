import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  int m = int.parse(stdin.readLineSync()!);

  Set<int> figurinhas = {};
  for (int i = 0; i < m; ++i) {
    int x = int.parse(stdin.readLineSync()!);
    figurinhas.add(x);
  }

  print(n - figurinhas.length);
}
