import 'dart:io';

void main() {
  while (true) {
    String? entrada = stdin.readLineSync();
    if (entrada == null) {
      break;
    }

    List<String> numeros = entrada.split(' ');
    int v = int.parse(numeros[0]);
    int t = int.parse(numeros[1]);

    print(v * 2 * t);
  }
}
