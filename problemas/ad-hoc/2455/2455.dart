import 'dart:io';

void main() {
  List<int> entrada =
      stdin.readLineSync()!.split(' ').map((x) => int.parse(x)).toList();
  int p1 = entrada[0];
  int c1 = entrada[1];
  int p2 = entrada[2];
  int c2 = entrada[3];

  int diferenca = p2 * c2 - p1 * c1;

  if (diferenca < 0) {
    print("-1");
  } else if (diferenca > 0) {
    print("1");
  } else {
    print("0");
  }
}
