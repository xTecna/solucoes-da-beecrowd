import 'dart:io';

void main() {
  List<int> numeros =
      stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
  int m = numeros[0];
  int n = numeros[1];
  while (n != 0 && m != 0) {
    print((m + n).toString().replaceAll(RegExp(r'0'), ''));

    numeros =
        stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
    m = numeros[0];
    n = numeros[1];
  }
}
