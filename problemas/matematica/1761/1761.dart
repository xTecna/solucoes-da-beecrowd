import 'dart:io';
import 'dart:math';

void main() {
  while (true) {
    String? linha = stdin.readLineSync();
    if (linha == null) {
        break;
    }

    List<double> entrada = linha.split(' ').map((x) => double.parse(x)).toList();
    double a = entrada[0];
    double b = entrada[1];
    double c = entrada[2];
    
    print((5.0 * (tan(a * pi / 180.0) * b + c)).toStringAsFixed(2));
  }
}
