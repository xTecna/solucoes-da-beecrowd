import 'dart:io';

void main() {
  List<double> precos = [0, 1.5, 2.5, 3.5, 4.5, 5.5];

  int n = int.parse(stdin.readLineSync()!);

  double valor = 0.0;
  for (int i = 0; i < n; i++) {
    List<int> valores =
        stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
    valor += precos[valores[0] - 1000] * valores[1];
  }

  print(valor.toStringAsFixed(2));
}
