import 'dart:io';
import 'dart:math';

void main() {
  List<String> numeros = stdin.readLineSync()!.split(' ');
  int ca = int.parse(numeros[0]);
  int ba = int.parse(numeros[1]);
  int pa = int.parse(numeros[2]);

  numeros = stdin.readLineSync()!.split(' ');
  int cr = int.parse(numeros[0]);
  int br = int.parse(numeros[1]);
  int pr = int.parse(numeros[2]);

  print(max(cr - ca, 0) + max(br - ba, 0) + max(pr - pa, 0));
}
