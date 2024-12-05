import 'dart:io';

void main() {
  List<String> numeros = stdin.readLineSync()!.split(' ');

  for (int i = 0; i < 4; i++) {
    if (int.parse(numeros[i]) == 1) {
      print(i + 1);
      break;
    }
  }
}
