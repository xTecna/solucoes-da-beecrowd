import 'dart:io';

void main() {
  String opcao = stdin.readLineSync()!.trim();

  List<List<double>> M = List.generate(12, (_) => List.filled(12, 0));
  for (int i = 0; i < 12; ++i) {
    for (int j = 0; j < 12; ++j) {
      M[i][j] = double.parse(stdin.readLineSync()!);
    }
  }

  double media = 0.0;
  int quantidade = 0;
  for (int i = 7; i < 12; ++i) {
    for (int j = 12 - i; j < i; ++j) {
      media += M[i][j];
      quantidade += 1;
    }
  }

  if (opcao == "M") {
    media /= quantidade;
  }

  print("${media.toStringAsFixed(1)}");
}
