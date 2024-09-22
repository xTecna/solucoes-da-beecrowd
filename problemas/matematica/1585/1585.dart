import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n; i++) {
    List<String> numeros = stdin.readLineSync()!.split(' ');
    int x = int.parse(numeros[0]);
    int y = int.parse(numeros[1]);

    print("${(x * y) ~/ 2} cm2");
  }
}
