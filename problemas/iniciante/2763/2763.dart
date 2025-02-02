import 'dart:io';

void main() {
  List<String> partes = stdin.readLineSync()!.split('.');
  List<String> partes2 = partes[2].split('-');

  print(partes[0]);
  print(partes[1]);
  print(partes2[0]);
  print(partes2[1]);
}
