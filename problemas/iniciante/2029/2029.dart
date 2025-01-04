import 'dart:io';

void main() {
  double pi = 3.14;
  while (true) {
    String? entrada = stdin.readLineSync();
    if (entrada == null) {
      break;
    }
    double v = double.parse(entrada);
    entrada = stdin.readLineSync();
    if (entrada == null) {
      break;
    }
    double d = double.parse(entrada) / 2.0;

    double area = pi * d * d;
    double altura = v / area;

    print("ALTURA = ${altura.toStringAsFixed(2)}");
    print("AREA = ${area.toStringAsFixed(2)}");
  }
}
