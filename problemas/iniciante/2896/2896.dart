import 'dart:io';

void main() {
  int t = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < t; ++i) {
    List<String> numeros = stdin.readLineSync()!.split(' ');
    int n = int.parse(numeros[0]);
    int k = int.parse(numeros[1]);
    print(n ~/ k + n % k);
  }
}
