import 'dart:io';
import 'dart:math';

void main() {
  List<int> numeros =
      stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
  int n = numeros[0];
  int saldo = numeros[1];

  int resposta = saldo;
  for (int i = 0; i < n; i++) {
    int movimentacao = int.parse(stdin.readLineSync()!);
    saldo += movimentacao;

    resposta = min(resposta, saldo);
  }

  print(resposta);
}
