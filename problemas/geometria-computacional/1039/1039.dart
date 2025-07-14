import 'dart:io';
import 'dart:math';

double dist(x1, y1, x2, y2) {
  return sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1));
}

void main() {
  while (true) {
    String? entrada = stdin.readLineSync();

    if (entrada == null) {
      break;
    }

    List<int> numeros = entrada.split(' ').map((x) => int.parse(x)).toList();
    int r1 = numeros[0];
    int x1 = numeros[1];
    int y1 = numeros[2];
    int r2 = numeros[3];
    int x2 = numeros[4];
    int y2 = numeros[5];

    if (dist(x1, y1, x2, y2) <= (r1 - r2)) {
      print("RICO");
    } else {
      print("MORTO");
    }
  }
}
