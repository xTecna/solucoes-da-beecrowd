import 'dart:io';

void imprimeTriangulo(int tamanho, int deslocamento) {
  int espacos = tamanho ~/ 2 + deslocamento;
  int asteriscos = 1;

  while (asteriscos <= tamanho) {
    String linha = "";
    for (int i = 0; i < espacos; i++) {
      linha += " ";
    }
    for (int i = 0; i < asteriscos; i++) {
      linha += "*";
    }
    print(linha);

    espacos -= 1;
    asteriscos += 2;
  }
}

void main() {
  while (true) {
    String? linha = stdin.readLineSync();
    if (linha == null) {
      break;
    }

    int n = int.parse(linha);
    imprimeTriangulo(n, 0);
    imprimeTriangulo(3, n ~/ 2 - 1);
    print("");
  }
}
