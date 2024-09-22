import 'dart:io';

void main() {
  int pessoas = 0;
  int jipes = 0;

  while (true) {
    String? entrada = stdin.readLineSync();
    if (entrada == null) {
      break;
    }

    List<String> partes = entrada.split(' ');
    if (partes[0] == "ABEND") {
      break;
    }
    if (partes[0] == "SALIDA") {
      pessoas += int.parse(partes[1]);
      jipes += 1;
    } else {
      pessoas -= int.parse(partes[1]);
      jipes -= 1;
    }
  }

  print(pessoas);
  print(jipes);
}
