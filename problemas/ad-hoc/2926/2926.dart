import 'dart:io';
import 'dart:math';

void main() {
  int n = int.parse(stdin.readLineSync()!);

  String grito = "";
  for (int i = 0; i < n; ++i) {
    grito += "a";
  }

  print("Ent" + grito + "o eh N" + grito + "t" + grito + "l!");
}
