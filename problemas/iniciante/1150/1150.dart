import 'dart:io';

void main() {
  int x = int.parse(stdin.readLineSync()!);
  int z = 0;
  while (true) {
    z = int.parse(stdin.readLineSync()!);
    if (z > x) {
      break;
    }
  }

  int soma = x;
  int resposta = 1;
  while (soma <= z) {
    soma += x + resposta;
    resposta += 1;
  }

  print(resposta);
}
