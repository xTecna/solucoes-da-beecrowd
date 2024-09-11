import 'dart:io';

void main() {
  int pares = 0;
  int impares = 0;
  int positivos = 0;
  int negativos = 0;

  for (int i = 0; i < 5; ++i) {
    int numero = int.parse(stdin.readLineSync()!);

    if (numero % 2 == 0) {
      pares = pares + 1;
    } else {
      impares = impares + 1;
    }

    if (numero > 0) {
      positivos = positivos + 1;
    } else if (numero < 0) {
      negativos = negativos + 1;
    }
  }

  print('$pares valor(es) par(es)');
  print('$impares valor(es) impar(es)');
  print('$positivos valor(es) positivo(s)');
  print('$negativos valor(es) negativo(s)');
}
