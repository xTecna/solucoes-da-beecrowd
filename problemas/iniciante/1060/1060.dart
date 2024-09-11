import 'dart:io';

void main() {
  int positivos = 0;

  for (int i = 0; i < 6; ++i) {
    double numero = double.parse(stdin.readLineSync()!);

    if (numero > 0) {
      positivos = positivos + 1;
    }
  }

  print('$positivos valores positivos');
}
