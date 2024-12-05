import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);

  int vitorias = 0;
  for (int i = 0; i < n; ++i) {
    int x = int.parse(stdin.readLineSync()!);
    if (x != 1) {
      vitorias += 1;
    }
  }

  print(vitorias);
}
