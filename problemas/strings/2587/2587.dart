import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; ++i) {
    String palavra1 = stdin.readLineSync()!;
    String palavra2 = stdin.readLineSync()!;
    String secreta = stdin.readLineSync()!;

    int pos1 = secreta.indexOf("_");
    int pos2 = secreta.indexOf("_", pos1 + 1);

    if (palavra1[pos1] == palavra2[pos2] || palavra1[pos2] == palavra2[pos1]) {
      print("Y");
    } else {
      print("N");
    }
  }
}
