import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<int> valores =
      stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();

  int dois = 0;
  int tres = 0;
  int quatro = 0;
  int cinco = 0;
  for (int i = 0; i < n; i++) {
    if (valores[i] % 2 == 0) {
      dois += 1;
    }
    if (valores[i] % 3 == 0) {
      tres += 1;
    }
    if (valores[i] % 4 == 0) {
      quatro += 1;
    }
    if (valores[i] % 5 == 0) {
      cinco += 1;
    }
  }

  print("${dois} Multiplo(s) de 2");
  print("${tres} Multiplo(s) de 3");
  print("${quatro} Multiplo(s) de 4");
  print("${cinco} Multiplo(s) de 5");
}
