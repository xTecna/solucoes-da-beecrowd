import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n; ++i) {
    List<int> entrada = stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
    int b = entrada[0];
    int e = entrada[1];

    String resposta = "";
    for (int j = b; j <= e; ++j) {
      resposta += j.toString();
    }
    resposta += resposta.split('').reversed.join();
    
    print(resposta);
  }
}
