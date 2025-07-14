import 'dart:io';
import 'dart:math';

double dist(x1, y1, x2, y2) {
  return sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1));
}

void main() {
  while (true) {
    List<int> numeros =
        stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
    int l = numeros[0];
    int c = numeros[1];
    int r1 = numeros[2];
    int r2 = numeros[3];
    if (l == 0 && c == 0 && r1 == 0 && r2 == 0) {
      break;
    }

    int x1 = r1;
    int y1 = r1;
    int x2 = l - r2;
    int y2 = c - r2;

    double distancia = dist(x1, y1, x2, y2);
    if (l < 2 * r1 ||
        c < 2 * r1 ||
        l < 2 * r2 ||
        c < 2 * r2 ||
        distancia < r1 + r2) {
      print("N");
    } else {
      print("S");
    }
  }
}
