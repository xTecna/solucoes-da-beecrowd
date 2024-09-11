import 'dart:io';

void main() {
  List<double> notas = [];
  while (notas.length < 2) {
    double nota = double.parse(stdin.readLineSync()!);

    if (nota >= 0.0 && nota <= 10.0) {
      notas.add(nota);
    } else {
      print('nota invalida');
    }
  }

  print('media = ${((notas[0] + notas[1]) / 2.0).toStringAsFixed(2)}');
}
