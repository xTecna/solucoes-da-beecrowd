import 'dart:io';
import 'dart:math';

void main() {
  while (true) {
    String? entrada = stdin.readLineSync();
    if (entrada == null) {
      break;
    }

    double f = double.parse(entrada);
    double lado = f * sin(108 * pi / 180) / sin(63 * pi / 180);
    print(lado.toStringAsFixed(10));
  }
}
