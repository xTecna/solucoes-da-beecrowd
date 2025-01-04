import 'dart:io';

void main() {
  int teste = 1;
  while (true) {
    int n = int.parse(stdin.readLineSync()!);
    if (n == -1) {
      break;
    }

    print("Experiment ${teste}: ${(n / 2).floor()} full cycle(s)");
    teste += 1;
  }
}
