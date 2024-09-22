import 'dart:io';

int converteParaDecimal(String n) {
  int resposta = 0;
  int potencia = 0;
  List<int> fatorial = [1, 2, 6, 24, 120];

  for (int i = n.length - 1; i > -1; i--) {
    resposta += int.parse(n[i]) * fatorial[potencia];
    potencia += 1;
  }

  return resposta;
}

void main() {
  while (true) {
    String n = stdin.readLineSync()!;
    if (n == "0") {
      break;
    }
    print(converteParaDecimal(n));
  }
}
