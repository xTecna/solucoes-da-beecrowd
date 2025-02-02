import 'dart:io';

void main() {
  int t = int.parse(stdin.readLineSync()!);
  for (int k = 0; k < t; ++k) {
    List<int> valores =
        stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
    int d = valores[0];
    int b = valores[2];

    List<int> precos =
        stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();

    int resposta = 0;
    for (int i = 0; i < b; ++i) {
      List<int> bolo =
          stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
      bolo.removeAt(0);

      int custo = 0;
      for (int j = 0; j < bolo.length; j += 2) {
        custo += precos[bolo[j]] * bolo[j + 1];
      }

      if (d / custo > resposta) {
        resposta = d ~/ custo;
      }
    }

    print(resposta);
  }
}
