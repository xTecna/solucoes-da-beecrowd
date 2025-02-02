import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n; ++i) {
    String linha = stdin.readLineSync()!;
    int parte1 = int.parse(linha.substring(2, 4));
    int parte2 = int.parse(linha.substring(5, 8));
    int parte3 = int.parse(linha.substring(11, 13));

    print(parte1 + parte2 + parte3);
  }
}
