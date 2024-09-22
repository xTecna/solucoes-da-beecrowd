import 'dart:io';

void main() {
  List<String> numeros = stdin.readLineSync()!.split(' ');
  int n = int.parse(numeros[0]);
  int m = int.parse(numeros[1]);

  for (int i = 0; i < m; i++) {
    String acao = stdin.readLineSync()!;

    if (acao == "fechou") {
      n += 1;
    } else {
      n -= 1;
    }
  }

  print(n);
}
