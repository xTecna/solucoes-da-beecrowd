import 'dart:io';

void main() {
  List<int> numeros =
      stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
  numeros.sort();

  print(numeros[1]);
}
