import 'dart:io';

void main() {
  while (true) {
    int n = int.parse(stdin.readLineSync()!);
    if (n == 0) {
      break;
    }

    int limite = (1 << (2 * n - 2)).toString().length;
    for (int i = 0; i < n; i++) {
      stdout.write((1 << i).toString().padLeft(limite));
      for (int j = 1; j < n; j++) {
        stdout.write((1 << (i + j)).toString().padLeft(limite + 1));
      }
      print("");
    }
    print("");
  }
}
