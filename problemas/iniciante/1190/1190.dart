import 'dart:io';
import 'dart:math';

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
  for (int i = 0; i < 12; ++i) {
    for (int j = max(i + 1, 12 - i); j < 12; ++j) {
      media += M[i][j];
      quantidade += 1;
    }
  }

  if (opcao == "M") {
    media /= quantidade;
  }

  print("${media.toStringAsFixed(1)}");
}
