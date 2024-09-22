import 'dart:io';

void main() {
  while (true) {
    List<String> numeros = stdin.readLineSync()!.split(' ');
    int x = int.parse(numeros[0]);
    int m = int.parse(numeros[1]);

    if (x == 0 && m == 0) {
      break;
    }

    print(x * m);
  }
}
