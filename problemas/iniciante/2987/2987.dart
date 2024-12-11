import 'dart:io';

void main() {
  String l = stdin.readLineSync()!;
  print(l.codeUnitAt(0) - "A".codeUnitAt(0) + 1);
}
