import 'dart:io';

void main() {
  List<String> numeros = stdin.readLineSync()!.split(' ');
  int n = int.parse(numeros[0]);
  int x = int.parse(numeros[1]);
  int y = int.parse(numeros[2]);

  print((n / (x + y)).toStringAsFixed(2));
}
