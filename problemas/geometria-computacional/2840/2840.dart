import 'dart:io';

void main() {
  List<int> valores =
      stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
  int r = valores[0];
  int l = valores[1];

  double pi = 3.1415;
  double v = (4.0 * pi * r * r * r) / 3.0;

  print(l ~/ v);
}
