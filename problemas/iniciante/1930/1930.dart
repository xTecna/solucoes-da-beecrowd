import 'dart:io';

void main() {
  List<int> valores =
      stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
  int soma = 0;
  for (int i = 0; i < 4; i++) {
    soma += valores[i];
  }
  soma -= 3;
  print(soma);
}
