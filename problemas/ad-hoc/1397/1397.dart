import 'dart:io';

void main() {
  while (true) {
    int n = int.parse(stdin.readLineSync()!);

    if (n == 0) {
      break;
    }

    int jogador1 = 0;
    int jogador2 = 0;
    for (int i = 0; i < n; i++) {
      List<int> valores =
          stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
      int a = valores[0];
      int b = valores[1];

      if (a > b) {
        jogador1 += 1;
      } else if (a < b) {
        jogador2 += 1;
      }
    }

    print('${jogador1} ${jogador2}');
  }
}
