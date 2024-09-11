import 'dart:io';

void main() {
  int soma = 0;
  int q = 0;
  while (true) {
    int idade = int.parse(stdin.readLineSync()!);

    if (idade < 0) {
      break;
    }

    soma += idade;
    q += 1;
  }

  print((soma / q).toStringAsFixed(2));
}
