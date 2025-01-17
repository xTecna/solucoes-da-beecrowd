import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync());

  List<int> divisoes = stdin.readLineSync().split(' ').where((x) => x != '').map((x) => int.parse(x)).toList();
  int resposta = 0;
  for (int i = 0; i < n; ++i) {
  	resposta += divisoes[i];
  }

  print(resposta - n);
}
