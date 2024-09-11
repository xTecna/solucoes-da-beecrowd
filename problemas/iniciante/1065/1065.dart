import 'dart:io';

void main() {
  int pares = 0;

  for (int i = 0; i < 5; ++i) {
    int numero = int.parse(stdin.readLineSync()!);

    if (numero % 2 == 0) {
      pares = pares + 1;
    }
  }

  print('$pares valores pares');
}
