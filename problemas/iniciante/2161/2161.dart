import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);

  double resposta = 0.0;
  if (n == 0) {
    resposta = 3.0;
  } else {
    resposta = 6.0;
    for (int i = 1; i < n; i++) {
      resposta = 6.0 + 1.0 / resposta;
    }
    resposta = 3.0 + 1.0 / resposta;
  }

  print(resposta.toStringAsFixed(10));
}
