import 'dart:io';
import 'dart:math';

void main() {
  int n = int.parse(stdin.readLineSync()!);

  double menor_preco = 1000.0;
  for (int i = 0; i < n; ++i) {
    List<double> entrada =
        stdin.readLineSync()!.split(' ').map((x) => double.parse(x)).toList();
    double p = entrada[0];
    double g = entrada[1];

    menor_preco = min(menor_preco, p / g);
  }

  print((menor_preco * 1000).toStringAsFixed(2));
}
