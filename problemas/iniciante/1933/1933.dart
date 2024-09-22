import 'dart:io';
import 'dart:math';

void main() {
  List<int> valores =
      stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
  print(max(valores[0], valores[1]));
}
