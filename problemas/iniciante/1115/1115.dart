import 'dart:io';

void main() {
  while (true) {
    List<int> valores =
        stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
    int x = valores[0];
    int y = valores[1];

    if (x == 0 || y == 0) {
      break;
    }

    if (x > 0) {
      if (y > 0) {
        print('primeiro');
      } else {
        print('quarto');
      }
    } else {
      if (y > 0) {
        print('segundo');
      } else {
        print('terceiro');
      }
    }
  }
}
