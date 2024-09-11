import 'dart:io';

void main() {
  int dentro = 0;
  int fora = 0;

  int n = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n; ++i) {
    int numero = int.parse(stdin.readLineSync()!);

    if (numero >= 10 && numero <= 20) {
      dentro += 1;
    } else {
      fora += 1;
    }
  }

  print('$dentro in');
  print('$fora out');
}
