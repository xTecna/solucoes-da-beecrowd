import 'dart:io';

void main() {
  int c = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < c; i++) {
    int n = int.parse(stdin.readLineSync()!);

    if (n <= 8000) {
      print("Inseto!");
    } else {
      print("Mais de 8000!");
    }
  }
}
