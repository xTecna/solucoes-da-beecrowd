import 'dart:io';
import 'dart:math';

void main() {
  List<int> numeros =
      stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();

  int maior = numeros[0];
  for (int i = 1; i < numeros.length; i++) {
    maior = max(maior, numeros[i]);
  }

  print(maior);
}
