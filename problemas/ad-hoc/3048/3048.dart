import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);

  int resposta = 0;
  int anterior = -1;
  for (int i = 0; i < n; ++i) {
    int atual = int.parse(stdin.readLineSync()!);

    if (atual != anterior) {
      anterior = atual;
      resposta += 1;
    }
  }

  print(resposta);
}
