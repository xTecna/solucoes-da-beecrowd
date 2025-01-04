import 'dart:io';

void main() {
  while (true) {
    String? entrada = stdin.readLineSync();
    if (entrada == null) {
      break;
    }

    int senha = int.parse(entrada);
    print(senha - 1);
  }
}
