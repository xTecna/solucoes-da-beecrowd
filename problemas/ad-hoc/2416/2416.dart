import 'dart:io';

void main() {
  List<int> valores =
      stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
  int c = valores[0];
  int n = valores[1];

  print(c % n);
}
