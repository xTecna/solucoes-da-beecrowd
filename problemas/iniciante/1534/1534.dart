import 'dart:io';

void main() {
  while (true) {
    String? entrada = stdin.readLineSync();
    if (entrada == null) {
      break;
    }

    int n = int.parse(entrada);
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < n; j++) {
        if (i == n - 1 - j) {
          stdout.write(2);
        } else if (i == j) {
          stdout.write(1);
        } else {
          stdout.write(3);
        }
      }
      print("");
    }
  }
}
