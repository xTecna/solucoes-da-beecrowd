import 'dart:io';
import 'dart:math';

void main() {
  int n = int.parse(stdin.readLineSync()!);

  print(
      "${(n / log(n)).toStringAsFixed(1)} ${(1.25506 * n / log(n)).toStringAsFixed(1)}");
}
