import 'dart:io';

void main() {
  int l = int.parse(stdin.readLineSync()!);
  int c = int.parse(stdin.readLineSync()!);

  print(l * c + (l - 1) * (c - 1));
  print(2 * (l + c - 2));
}
