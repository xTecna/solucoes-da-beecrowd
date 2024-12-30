import 'dart:io';
import 'dart:math';

void main() {
  int m = int.parse(stdin.readLineSync()!);
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);

  int c = m - a - b;

  print(max(a, max(b, c)));
}
