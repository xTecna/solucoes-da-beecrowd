import 'dart:io';

void main() {
  while (true) {
    int n = int.parse(stdin.readLineSync()!);

    if (n == 0) {
      break;
    }

    for (int i = 0; i < n; i++) {
      List<int> cores =
          stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();

      int opcao = -1;
      int corretos = 0;
      for (int k = 0; k < 5; ++k) {
        if (cores[k] <= 127) {
          opcao = k;
          corretos += 1;
        }
      }

      if (corretos == 1) {
        print(String.fromCharCode("A".codeUnitAt(0) + opcao));
      } else {
        print("*");
      }
    }
  }
}
