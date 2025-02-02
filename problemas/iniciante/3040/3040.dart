import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; ++i) {
    List<String> numeros = stdin.readLineSync()!.split(' ');
    int altura = int.parse(numeros[0]);
    int espessura = int.parse(numeros[1]);
    int galhos = int.parse(numeros[2]);

    if (200 <= altura && altura <= 300 && 50 <= espessura && 150 <= galhos) {
      print("Sim");
    } else {
      print("Nao");
    }
  }
}
